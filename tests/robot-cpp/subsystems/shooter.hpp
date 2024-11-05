#pragma once

#include <frc/simulation/FlywheelSim.h>
#include <frc2/command/SubsystemBase.h>
#include <hal/SimDevice.h>
#include <rev/SparkClosedLoopController.h>
#include <rev/SparkMax.h>
#include <rev/SparkRelativeEncoder.h>

class Shooter : public frc2::SubsystemBase {
public:
  Shooter();

  void Periodic() override;
  void SimulationPeriodic() override;

  void Stop();

  void SpinAtRpm(units::revolutions_per_minute_t rpm);

  units::revolutions_per_minute_t GetRpm();

private:
  void Log();

  rev::spark::SparkMax m_motor;
  rev::spark::SparkRelativeEncoder m_encoder;
  rev::spark::SparkClosedLoopController m_controller;

  // Sim
  hal::SimDouble m_encoderVelocitySim;
  frc::sim::FlywheelSim m_flywheelSim;
};
