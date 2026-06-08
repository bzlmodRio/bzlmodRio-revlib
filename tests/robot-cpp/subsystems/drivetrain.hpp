#pragma once

#include <wpi/hardware/imu/OnboardIMU.hpp>
#include <wpi/drive/DifferentialDrive.hpp>
#include <wpi/math/kinematics/DifferentialDriveOdometry.hpp>
#include <wpi/simulation/OnboardIMUSim.hpp>
#include <wpi/simulation/DifferentialDrivetrainSim.hpp>
#include <wpi/smartdashboard/Field2d.hpp>
#include <wpi/commands2/SubsystemBase.hpp>
#include <wpi/hal/SimDevice.hpp>
#include <rev/SparkMax.h>
#include <rev/SparkRelativeEncoder.h>
#include <wpi/units/length.hpp>
#include <wpi/units/velocity.hpp>

class DriveTrain : public wpi::cmd::SubsystemBase {
 public:
  DriveTrain();

  void ArcadeDrive(double throttle, double rotation);

  double GetHeadingDegrees();
  wpi::math::Rotation2d GetRotation();

  void Reset();

  double GetAverageDistance();

  void UpdateOdometry();

  void Periodic() override;

  void SimulationPeriodic() override;

  wpi::units::meter_t GetLeftEncoderDistance();
  wpi::units::meter_t GetRightEncoderDistance();

  wpi::units::meters_per_second_t GetLeftEncoderVelocity();
  wpi::units::meters_per_second_t GetRightEncoderVelocity();

 private:
  void Log();

  rev::spark::SparkMax m_leftMotorA;
  rev::spark::SparkMax m_leftMotorB;
  rev::spark::SparkRelativeEncoder m_leftEncoder;

  rev::spark::SparkMax m_rightMotorA;
  rev::spark::SparkMax m_rightMotorB;
  rev::spark::SparkRelativeEncoder m_rightEncoder;

  wpi::OnboardIMU m_gyro;
  wpi::DifferentialDrive m_robotDrive;

  wpi::math::DifferentialDriveOdometry m_odometry;
  wpi::Field2d m_field;

  // Simulation
  wpi::sim::OnboardIMUSim m_gyroSim;
  wpi::hal::SimDouble m_leftEncoderPositionSim;
  wpi::hal::SimDouble m_leftEncoderVelocitySim;
  wpi::hal::SimDouble m_rightEncoderPositionSim;
  wpi::hal::SimDouble m_rightEncoderVelocitySim;
  wpi::sim::DifferentialDrivetrainSim m_drivetrainSimulator;
};
