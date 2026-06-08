#include "robot-cpp/subsystems/shooter.hpp"

#include <wpi/system/RobotController.hpp>
#include <wpi/smartdashboard/SmartDashboard.hpp>
#include <wpi/system/plant/LinearSystemId.hpp>

#include "robot-cpp/subsystems/ports.hpp"

namespace {

constexpr wpi::math::DCMotor kGearbox = wpi::math::DCMotor::Vex775Pro(2);
constexpr double kGearing = 4;
constexpr wpi::units::kilogram_square_meter_t kInertia{0.008};

wpi::math::LinearSystem<1, 1, 1> kPlant{
    wpi::math::LinearSystemId::FlywheelSystem(kGearbox, kInertia, kGearing)};
}  // namespace

Shooter::Shooter()
    : m_motor{kShooterMotorPort, rev::spark::SparkMax::MotorType::kBrushless},
      m_encoder(m_motor.GetEncoder()),
      m_controller(m_motor.GetClosedLoopController()),
      m_flywheelSim(kPlant, kGearbox) {}

void Shooter::Stop() { m_motor.Set(0); }

void Shooter::SpinAtRpm(wpi::units::revolutions_per_minute_t rpm) {
  double rpm_as_double = rpm.to<double>();
  m_controller.SetSetpoint(rpm_as_double,
                           rev::spark::SparkLowLevel::ControlType::kVelocity);
}
wpi::units::revolutions_per_minute_t Shooter::GetRpm() {
  return wpi::units::revolutions_per_minute_t{m_encoder.GetVelocity()};
}

void Shooter::Periodic() { Log(); }

void Shooter::SimulationPeriodic() {
  m_flywheelSim.SetInput(Eigen::Vector<double, 1>(
      m_motor.Get() * wpi::RobotController::GetInputVoltage()));

  m_flywheelSim.Update(20_ms);
  using rpm_t = wpi::units::revolutions_per_minute_t;
  m_encoderVelocitySim.Set(
      static_cast<rpm_t>(m_flywheelSim.GetAngularVelocity()).to<double>());
}

void Shooter::Log() {
  wpi::SmartDashboard::PutNumber("Shooter Speed", m_motor.Get());
  wpi::SmartDashboard::PutNumber("Shooter RPM", GetRpm().to<double>());
}
