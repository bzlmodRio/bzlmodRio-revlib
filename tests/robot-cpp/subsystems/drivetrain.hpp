#pragma once

#include <frc/ADXRS450_Gyro.h>
#include <frc/drive/DifferentialDrive.h>
#include <frc/kinematics/DifferentialDriveOdometry.h>
#include <frc/simulation/ADXRS450_GyroSim.h>
#include <frc/simulation/DifferentialDrivetrainSim.h>
#include <frc/smartdashboard/Field2d.h>
#include <frc2/command/SubsystemBase.h>
#include <hal/SimDevice.h>
#include <rev/SparkMax.h>
#include <rev/SparkRelativeEncoder.h>
#include <units/length.h>
#include <units/velocity.h>

class DriveTrain : public frc2::SubsystemBase {
 public:
  DriveTrain();

  void ArcadeDrive(double throttle, double rotation);

  double GetHeadingDegrees();
  frc::Rotation2d GetRotation();

  void Reset();

  double GetAverageDistance();

  void UpdateOdometry();

  void Periodic() override;

  void SimulationPeriodic() override;

  units::meter_t GetLeftEncoderDistance();
  units::meter_t GetRightEncoderDistance();

  units::meters_per_second_t GetLeftEncoderVelocity();
  units::meters_per_second_t GetRightEncoderVelocity();

 private:
  void Log();

  rev::spark::SparkMax m_leftMotorA;
  rev::spark::SparkMax m_leftMotorB;
  rev::spark::SparkRelativeEncoder m_leftEncoder;

  rev::spark::SparkMax m_rightMotorA;
  rev::spark::SparkMax m_rightMotorB;
  rev::spark::SparkRelativeEncoder m_rightEncoder;

  frc::ADXRS450_Gyro m_gyro;
  frc::DifferentialDrive m_robotDrive;

  frc::DifferentialDriveOdometry m_odometry;
  frc::Field2d m_field;

  // Simulation
  frc::sim::ADXRS450_GyroSim m_gyroSim;
  hal::SimDouble m_leftEncoderPositionSim;
  hal::SimDouble m_leftEncoderVelocitySim;
  hal::SimDouble m_rightEncoderPositionSim;
  hal::SimDouble m_rightEncoderVelocitySim;
  frc::sim::DifferentialDrivetrainSim m_drivetrainSimulator;
};
