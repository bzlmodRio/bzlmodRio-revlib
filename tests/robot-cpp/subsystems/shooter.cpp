#include "robot-cpp/subsystems/shooter.hpp"

#include <frc/RobotController.h>
#include <frc/smartdashboard/SmartDashboard.h>
#include <frc/system/plant/LinearSystemId.h>

#include "robot-cpp/subsystems/ports.hpp"

namespace {

constexpr frc::DCMotor kGearbox = frc::DCMotor::Vex775Pro(2);
constexpr double kGearing = 4;
constexpr units::kilogram_square_meter_t kInertia{0.008};

frc::LinearSystem<1, 1, 1> kPlant{
    frc::LinearSystemId::FlywheelSystem(kGearbox, kInertia, kGearing)};
}  // namespace

Shooter::Shooter()
    : m_motor{0, kShooterMotorPort, rev::spark::SparkMax::MotorType::kBrushless},
      m_encoder(m_motor.GetEncoder()),
      m_controller(m_motor.GetClosedLoopController()),
      m_flywheelSim(kPlant, kGearbox) {}

void Shooter::Stop() { m_motor.Set(0); }

void Shooter::SpinAtRpm(units::revolutions_per_minute_t rpm) {
  double rpm_as_double = rpm.to<double>();
  m_controller.SetReference(rpm_as_double,
                            rev::spark::SparkLowLevel::ControlType::kVelocity);
}
units::revolutions_per_minute_t Shooter::GetRpm() {
  return units::revolutions_per_minute_t{m_encoder.GetVelocity()};
}

void Shooter::Periodic() { Log(); }

void Shooter::SimulationPeriodic() {
  m_flywheelSim.SetInput(Eigen::Vector<double, 1>(
      m_motor.Get() * frc::RobotController::GetInputVoltage()));

  m_flywheelSim.Update(20_ms);
  using rpm_t = units::revolutions_per_minute_t;
  m_encoderVelocitySim.Set(
      static_cast<rpm_t>(m_flywheelSim.GetAngularVelocity()).to<double>());
}

void Shooter::Log() {
  frc::SmartDashboard::PutNumber("Shooter Speed", m_motor.Get());
  frc::SmartDashboard::PutNumber("Shooter RPM", GetRpm().to<double>());
}
