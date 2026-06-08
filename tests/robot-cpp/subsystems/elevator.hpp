#pragma once

#include <wpi/simulation/ElevatorSim.hpp>
#include <wpi/commands2/Subsystem.hpp>
#include <wpi/hal/SimDevice.hpp>
#include <rev/SparkMax.h>
#include <rev/SparkRelativeEncoder.h>
#include <wpi/units/length.hpp>

class Elevator : public wpi::cmd::Subsystem {
 public:
  Elevator();

  void Stop();

  void GoToHeight(wpi::units::meter_t height);

  bool IsAtHeight();

  void Periodic() override;

  void SimulationPeriodic() override;

  wpi::units::meter_t GetElevatorHeight();

 private:
  void Log();

  rev::spark::SparkMax m_motor;
  rev::spark::SparkRelativeEncoder m_encoder;
  rev::spark::SparkClosedLoopController m_controller;
  wpi::units::meter_t m_setpoint{0};

  // Sim
  wpi::hal::SimDouble m_encoderPositionSim;
  wpi::sim::ElevatorSim m_elevatorSim;
};
