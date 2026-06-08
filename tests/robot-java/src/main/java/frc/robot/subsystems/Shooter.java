// Copyright (c) FIRST and other WPILib contributors.
// Open Source Software; you can modify and/or share it under the terms of
// the WPILib BSD license file in the root directory of this project.

package frc.robot.subsystems;

import com.revrobotics.PersistMode;
import com.revrobotics.RelativeEncoder;
import com.revrobotics.ResetMode;
import com.revrobotics.spark.SparkBase;
import com.revrobotics.spark.SparkClosedLoopController;
import com.revrobotics.spark.SparkMax;
import com.revrobotics.spark.config.SparkMaxConfig;
import org.wpilib.command2.SubsystemBase;
import org.wpilib.framework.RobotBase;
import org.wpilib.hardware.hal.SimDouble;
import org.wpilib.math.numbers.N1;
import org.wpilib.math.system.DCMotor;
import org.wpilib.math.system.LinearSystem;
import org.wpilib.math.system.Models;
import org.wpilib.simulation.FlywheelSim;
import org.wpilib.simulation.SimDeviceSim;
import org.wpilib.smartdashboard.SmartDashboard;
import org.wpilib.system.RobotController;

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

  private final SparkMax m_motor;
  private final RelativeEncoder m_encoder;
  private final SparkClosedLoopController m_pidController;

  // Sim
  private SimDouble m_encoderVelocitySim;
  private FlywheelSim m_flywheelSim;

  /** Create a new claw subsystem. */
  public Shooter() {
    m_motor = new SparkMax(0, PortMap.kShooterMotorPort, SparkBase.MotorType.kBrushless);
    SparkMaxConfig motorConfig = new SparkMaxConfig();
    motorConfig.closedLoop.p(kP);
    motorConfig.closedLoop.i(kI);
    motorConfig.closedLoop.d(kD);
    motorConfig.closedLoop.feedForward.kV(kF);
    m_motor.configure(motorConfig, ResetMode.kResetSafeParameters, PersistMode.kPersistParameters);

    m_encoder = m_motor.getEncoder();
    m_pidController = m_motor.getClosedLoopController();

    if (RobotBase.isSimulation()) {
      SimDeviceSim deviceSim = new SimDeviceSim("SPARK MAX [" + m_motor.getDeviceId() + "]");
      m_encoderVelocitySim = deviceSim.getDouble("Velocity");

      LinearSystem<N1, N1, N1> plant =
          Models.flywheelFromPhysicalConstants(kGearbox, kGearing, kInertia);
      m_flywheelSim = new FlywheelSim(plant, kGearbox);
    }
  }

  public void log() {
    SmartDashboard.putNumber("Shooter Speed", m_motor.getThrottle());
    SmartDashboard.putNumber("Shooter RPM", getRpm());
  }

  public void stop() {
    m_motor.setThrottle(0);
  }

  public void spinAtRpm(double rpm) {
    m_pidController.setSetpoint(rpm, SparkBase.ControlType.kVelocity);
  }

  double getRpm() {
    return m_encoder.getVelocity().get();
  }

  @Override
  public void periodic() {
    log();
  }

  @Override
  public void simulationPeriodic() {
    m_flywheelSim.setInput(m_motor.getThrottle() * RobotController.getInputVoltage());

    m_flywheelSim.update(0.02);
    m_encoderVelocitySim.set(m_flywheelSim.getAngularVelocity());
  }
}
