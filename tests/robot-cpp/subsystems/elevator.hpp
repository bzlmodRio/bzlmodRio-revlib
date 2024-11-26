#pragma once

#include <frc/simulation/ElevatorSim.h>
#include <frc2/command/Subsystem.h>
#include <hal/SimDevice.h>
#include <rev/SparkMax.h>
#include <rev/SparkRelativeEncoder.h>
#include <units/length.h>

class Elevator : public frc2::Subsystem {
 public:
  Elevator();

  void Stop();

  void GoToHeight(units::meter_t height);

  bool IsAtHeight();

  void Periodic() override;

  void SimulationPeriodic() override;

  units::meter_t GetElevatorHeight();

 private:
  void Log();

  rev::spark::SparkMax m_motor;
  rev::spark::SparkRelativeEncoder m_encoder;
  rev::spark::SparkClosedLoopController m_controller;
  units::meter_t m_setpoint{0};

  // Sim
  hal::SimDouble m_encoderPositionSim;
  frc::sim::ElevatorSim m_elevatorSim;
};
