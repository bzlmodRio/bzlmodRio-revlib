#pragma once

#include <rev/SparkClosedLoopController.h>
#include <rev/SparkMax.h>
#include <rev/SparkRelativeEncoder.h>

#include <wpi/commands2/SubsystemBase.hpp>
#include <wpi/hal/SimDevice.hpp>
#include <wpi/simulation/FlywheelSim.hpp>

class Shooter : public wpi::cmd::SubsystemBase {
 public:
  Shooter();

  void Periodic() override;
  void SimulationPeriodic() override;

  void Stop();

  void SpinAtRpm(wpi::units::revolutions_per_minute_t rpm);

  wpi::units::revolutions_per_minute_t GetRpm();

 private:
  void Log();

  rev::spark::SparkMax m_motor;
  rev::spark::SparkRelativeEncoder m_encoder;
  rev::spark::SparkClosedLoopController m_controller;

  // Sim
  wpi::hal::SimDouble m_encoderVelocitySim;
  wpi::sim::FlywheelSim m_flywheelSim;
};
