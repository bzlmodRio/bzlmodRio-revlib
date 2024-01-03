#pragma once

#include <frc/simulation/ElevatorSim.h>
#include <frc2/command/PIDSubsystem.h>
#include <hal/SimDevice.h>
#include <rev/CANSparkMax.h>
#include <rev/SparkRelativeEncoder.h>
#include <units/length.h>

class Elevator : public frc2::PIDSubsystem {
public:
  Elevator();

  void Stop();

  double GetMeasurement() override;

  void UseOutput(double output, double setpoint) override;

  void Periodic() override;

  void SimulationPeriodic() override;

  units::meter_t GetElevatorHeight();

private:
  void Log();

  rev::CANSparkMax m_motor;
  rev::SparkRelativeEncoder m_encoder;
  double m_setpoint{0};

  // Sim
  hal::SimDouble m_encoderPositionSim;
  frc::sim::ElevatorSim m_elevatorSim;
};
