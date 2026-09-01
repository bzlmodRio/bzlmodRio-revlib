#include "robot-cpp/subsystems/drivetrain.hpp"

#include <rev/config/SparkMaxConfig.h>

#include <iostream>
#include <numbers>
#include <wpi/driverstation/Joystick.hpp>
#include <wpi/simulation/SimDeviceSim.hpp>
#include <wpi/smartdashboard/SmartDashboard.hpp>
#include <wpi/system/RobotController.hpp>
#include <wpi/units/length.hpp>

#include "robot-cpp/subsystems/ports.hpp"

DriveTrain::DriveTrain()
    : m_leftMotorA{0, kDrivetrainMotorLeftAPort,
                   rev::spark::SparkMax::MotorType::kBrushless},
      m_leftMotorB{0, kDrivetrainMotorLeftBPort,
                   rev::spark::SparkMax::MotorType::kBrushless},
      m_leftEncoder{m_leftMotorA.GetEncoder()},
      m_rightMotorA{0, kDrivetrainMotorRightAPort,
                    rev::spark::SparkMax::MotorType::kBrushless},
      m_rightMotorB{0, kDrivetrainMotorRightBPort,
                    rev::spark::SparkMax::MotorType::kBrushless},
      m_rightEncoder{m_rightMotorA.GetEncoder()},
      m_gyro(wpi::OnboardIMU::FLAT),
      m_robotDrive{m_leftMotorA, m_rightMotorA},
      m_odometry{wpi::math::Rotation2d(), 0_m, 0_m},
      m_gyroSim{},
      m_drivetrainSimulator(
          wpi::sim::DifferentialDrivetrainSim::CreateKitbotSim(
              wpi::sim::DifferentialDrivetrainSim::KitbotMotor::
                  DUAL_CIM_PER_SIDE,
              12.0, 6_in)) {
  wpi::SmartDashboard::PutData("Field", &m_field);

  wpi::sim::SimDeviceSim leftDeviceSim(
      ("SPARK MAX [" + std::to_string(m_leftMotorA.GetDeviceId()) + "]")
          .c_str());
  m_leftEncoderPositionSim = leftDeviceSim.GetDouble("Position");
  m_leftEncoderVelocitySim = leftDeviceSim.GetDouble("Velocity");

  wpi::sim::SimDeviceSim rightDeviceSim(
      ("SPARK MAX [" + std::to_string(m_rightMotorA.GetDeviceId()) + "]")
          .c_str());
  std::cout << "Hello: " << rightDeviceSim << ", " << leftDeviceSim
            << std::endl;
  m_rightEncoderPositionSim = rightDeviceSim.GetDouble("Position");
  m_rightEncoderVelocitySim = rightDeviceSim.GetDouble("Velocity");

  rev::spark::SparkMaxConfig leftFollowerConfig;
  leftFollowerConfig.Follow(m_leftMotorA);
  m_leftMotorB.Configure(leftFollowerConfig,
                         rev::ResetMode::kNoResetSafeParameters,
                         rev::PersistMode::kPersistParameters);

  rev::spark::SparkMaxConfig rightFollowerConfig;
  rightFollowerConfig.Follow(m_rightMotorA);
  m_rightMotorB.Configure(rightFollowerConfig,
                          rev::ResetMode::kNoResetSafeParameters,
                          rev::PersistMode::kPersistParameters);

  SetName("DriveTrain");
}

void DriveTrain::Log() {
  wpi::SmartDashboard::PutNumber("Left Distance",
                                 GetLeftEncoderDistance().to<double>());
  wpi::SmartDashboard::PutNumber("Right Distance",
                                 GetRightEncoderDistance().to<double>());
  wpi::SmartDashboard::PutNumber("Left Speed",
                                 GetLeftEncoderVelocity().to<double>());
  wpi::SmartDashboard::PutNumber("Right Speed",
                                 GetRightEncoderVelocity().to<double>());
  wpi::SmartDashboard::PutNumber("Gyro", GetHeadingDegrees());
}

void DriveTrain::ArcadeDrive(double throttle, double rotation) {
  m_robotDrive.ArcadeDrive(throttle, rotation);
}

double DriveTrain::GetHeadingDegrees() {
  return GetRotation().Degrees().to<double>();
}

wpi::math::Rotation2d DriveTrain::GetRotation() {
  return m_gyro.GetRotation2d();
}

void DriveTrain::Reset() {
  m_gyro.ResetYaw();
  m_leftEncoder.SetPosition(0);
  m_rightEncoder.SetPosition(0);
}

double DriveTrain::GetAverageDistance() {
  return (GetLeftEncoderDistance() + GetRightEncoderDistance()).to<double>() /
         2.0;
}

void DriveTrain::UpdateOdometry() {
  m_odometry.Update(GetRotation(), GetLeftEncoderDistance(),
                    GetRightEncoderDistance());
  m_field.SetRobotPose(m_odometry.GetPose());
}

void DriveTrain::Periodic() {
  UpdateOdometry();
  Log();
}

void DriveTrain::SimulationPeriodic() {
  // To update our simulation, we set motor voltage inputs, update the
  // simulation, and write the simulated positions and velocities to our
  // simulated encoder and gyro. We negate the right side so that positive
  // voltages make the right side move forward.
  m_drivetrainSimulator.SetInputs(
      wpi::units::volt_t{m_leftMotorA.GetThrottle()} *
          wpi::RobotController::GetInputVoltage(),
      wpi::units::volt_t{-m_rightMotorA.GetThrottle()} *
          wpi::RobotController::GetInputVoltage());
  m_drivetrainSimulator.Update(20_ms);

  m_leftEncoderPositionSim.Set(
      m_drivetrainSimulator.GetLeftPosition().to<double>());
  m_leftEncoderVelocitySim.Set(
      m_drivetrainSimulator.GetLeftVelocity().to<double>());
  m_rightEncoderPositionSim.Set(
      m_drivetrainSimulator.GetRightPosition().to<double>());
  m_rightEncoderVelocitySim.Set(
      m_drivetrainSimulator.GetRightVelocity().to<double>());
  m_gyroSim.SetYaw(-m_drivetrainSimulator.GetHeading().Degrees());
}

wpi::units::meter_t DriveTrain::GetLeftEncoderDistance() {
  return wpi::units::meter_t{m_leftEncoder.GetPosition().Get()};
}

wpi::units::meter_t DriveTrain::GetRightEncoderDistance() {
  return wpi::units::meter_t{m_rightEncoder.GetPosition().Get()};
}

wpi::units::meters_per_second_t DriveTrain::GetLeftEncoderVelocity() {
  return wpi::units::meters_per_second_t{m_leftEncoder.GetVelocity().Get()};
}

wpi::units::meters_per_second_t DriveTrain::GetRightEncoderVelocity() {
  return wpi::units::meters_per_second_t{m_rightEncoder.GetVelocity().Get()};
}
