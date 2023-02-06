// Copyright (c) FIRST and other WPILib contributors.
// Open Source Software; you can modify and/or share it under the terms of
// the WPILib BSD license file in the root directory of this project.

package frc.robot.subsystems;

import com.revrobotics.CANSparkMax;
import com.revrobotics.CANSparkMaxLowLevel;
import com.revrobotics.RelativeEncoder;
import com.revrobotics.SparkMaxPIDController;
import edu.wpi.first.hal.SimDouble;
import edu.wpi.first.math.system.plant.DCMotor;
import edu.wpi.first.wpilibj.RobotBase;
import edu.wpi.first.wpilibj.RobotController;
import edu.wpi.first.wpilibj.simulation.FlywheelSim;
import edu.wpi.first.wpilibj.simulation.SimDeviceSim;
import edu.wpi.first.wpilibj.smartdashboard.SmartDashboard;
import edu.wpi.first.wpilibj2.command.SubsystemBase;

/**
 * The claw subsystem is a simple system with a motor for opening and closing. If using stronger
 * motors, you should probably use a sensor so that the motors don't stall.
 */
public class Shooter extends SubsystemBase {
  private static final double kP = 0.01;
  private static final double kI = 0.0;
  private static final double kD = 0.0;
  private static final double kF = 12.0 / 4700;

  private static final DCMotor kGearbox = DCMotor.getVex775Pro(2);
  private static final double kGearing = 4;
  private static final double kInertia = 0.008;

  private final CANSparkMax m_motor;
  private final RelativeEncoder m_encoder;
  private final SparkMaxPIDController m_pidController;

  // Sim
  private SimDouble m_encoderVelocitySim;
  private FlywheelSim m_flywheelSim;

  /** Create a new claw subsystem. */
  public Shooter() {
    m_motor = new CANSparkMax(PortMap.kShooterMotorPort, CANSparkMaxLowLevel.MotorType.kBrushless);
    m_encoder = m_motor.getEncoder();
    m_pidController = m_motor.getPIDController();
    m_pidController.setP(kP);
    m_pidController.setI(kI);
    m_pidController.setD(kD);
    m_pidController.setFF(kF);

    if (RobotBase.isSimulation()) {
      SimDeviceSim deviceSim = new SimDeviceSim("SPARK MAX [" + m_motor.getDeviceId() + "]");
      m_encoderVelocitySim = deviceSim.getDouble("Velocity");
      m_flywheelSim = new FlywheelSim(kGearbox, kGearing, kInertia);
    }
  }

  public void log() {
    SmartDashboard.putNumber("Shooter Speed", m_motor.get());
    SmartDashboard.putNumber("Shooter RPM", getRpm());
  }

  public void stop() {
    m_motor.set(0);
  }

  public void spinAtRpm(double rpm) {
    m_pidController.setReference(rpm, CANSparkMax.ControlType.kVelocity);
  }

  double getRpm() {
    return m_encoder.getVelocity();
  }

  @Override
  public void periodic() {
    log();
  }

  @Override
  public void simulationPeriodic() {
    m_flywheelSim.setInput(m_motor.get() * RobotController.getInputVoltage());

    m_flywheelSim.update(0.02);
    m_encoderVelocitySim.set(m_flywheelSim.getAngularVelocityRPM());
  }
}
