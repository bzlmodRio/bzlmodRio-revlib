#include "robot-cpp/subsystems/elevator.hpp"

#include <wpi/system/RobotController.hpp>
#include <wpi/math/controller/PIDController.hpp>
#include <wpi/smartdashboard/SmartDashboard.hpp>
#include <rev/config/SparkMaxConfig.h>

#include "robot-cpp/subsystems/ports.hpp"

namespace {
constexpr double kP = 5.0;
constexpr double kI = 0.0;
constexpr double kD = 0.0;

constexpr double kElevatorGearing = 10.0;
constexpr wpi::units::meter_t kElevatorDrumRadius = 2_in;
constexpr wpi::units::kilogram_t kCarriageMass = 4.0_kg;

constexpr wpi::units::meter_t kMinElevatorHeight = 0_in;
constexpr wpi::units::meter_t kMaxElevatorHeight = 50_in;

wpi::math::DCMotor kElevatorGearbox = wpi::math::DCMotor::Vex775Pro(4);
}  // namespace

Elevator::Elevator()
    : m_motor{0, kElevatorMotorPort, rev::spark::SparkMax::MotorType::kBrushless},
      m_encoder(m_motor.GetEncoder()),
      m_controller(m_motor.GetClosedLoopController()),
      m_elevatorSim(kElevatorGearbox, kElevatorGearing, kCarriageMass,
                    kElevatorDrumRadius, kMinElevatorHeight, kMaxElevatorHeight,
                    true, wpi::units::meter_t{0}) {
  rev::spark::SparkMaxConfig motorConfig;
  motorConfig.closedLoop.P(kP);
  motorConfig.closedLoop.I(kI);
  motorConfig.closedLoop.D(kD);

  m_motor.Configure(motorConfig, rev::ResetMode::kNoResetSafeParameters,
                    rev::PersistMode::kPersistParameters);
}

// void Elevator::Log() {
//   wpi::SmartDashboard::PutNumber("Elevator Height (m)",
//                                  GetElevatorHeight().to<double>());
// }

// wpi::units::meter_t Elevator::GetElevatorHeight() {
//   return wpi::units::meter_t{m_encoder.GetPosition()};
// }

bool Elevator::IsAtHeight() {
  return (GetElevatorHeight() - m_setpoint) < wpi::units::inch_t(2);
}

void Elevator::GoToHeight(wpi::units::meter_t height) {
  m_setpoint = height;
  m_controller.SetSetpoint(height.to<double>(),
                           rev::spark::SparkLowLevel::ControlType::kPosition);
}

void Elevator::Periodic() { Log(); }

void Elevator::SimulationPeriodic() {
  m_elevatorSim.SetInput(Eigen::Vector<double, 1>(
      m_motor.GetThrottle() * wpi::RobotController::GetInputVoltage()));
  m_elevatorSim.Update(20_ms);
  m_encoderPositionSim.Set(m_elevatorSim.GetPosition().to<double>());
}

void Elevator::Stop() { m_motor.SetThrottle(0); }
