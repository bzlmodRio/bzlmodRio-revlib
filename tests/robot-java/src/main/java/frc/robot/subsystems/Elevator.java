package frc.robot.subsystems;

import com.revrobotics.PersistMode;
import com.revrobotics.RelativeEncoder;
import com.revrobotics.ResetMode;
import com.revrobotics.spark.SparkBase;
import com.revrobotics.spark.SparkClosedLoopController;
import com.revrobotics.spark.SparkMax;
import com.revrobotics.spark.config.SparkMaxConfig;
import edu.wpi.first.hal.SimDouble;
import edu.wpi.first.math.system.plant.DCMotor;
import edu.wpi.first.math.util.Units;
import edu.wpi.first.wpilibj.RobotBase;
import edu.wpi.first.wpilibj.RobotController;
import edu.wpi.first.wpilibj.simulation.ElevatorSim;
import edu.wpi.first.wpilibj.simulation.SimDeviceSim;
import edu.wpi.first.wpilibj.smartdashboard.SmartDashboard;
import edu.wpi.first.wpilibj2.command.Subsystem;

public class Elevator implements Subsystem {
  private static final double kP = 4;
  private static final double kI = 0.0;
  private static final double kD = 0.0;

  private static final double kElevatorGearing = 10.0;
  private static final double kElevatorDrumRadius = Units.inchesToMeters(2);
  private static final double kCarriageMass = 4.0;

  private static final DCMotor kElevatorGearbox = DCMotor.getVex775Pro(4);
  private static final double kMinElevatorHeight = Units.inchesToMeters(0);
  private static final double kMaxElevatorHeight = Units.inchesToMeters(50);

  private static final double kArmEncoderDistPerPulse = 2.0 * 3.14 * kElevatorDrumRadius / 4096.0;

  private final SparkMax m_motor;
  private final RelativeEncoder m_encoder;

  private final SparkClosedLoopController m_pidController;

  // Sim
  private SimDouble m_encoderPositionSim;
  private ElevatorSim m_elevatorSim;

  private double m_goalHeight;

  /** Create a new elevator subsystem. */
  @SuppressWarnings("this-escape")
  public Elevator() {
    m_motor = new SparkMax(PortMap.kElevatorMotorPort, SparkMax.MotorType.kBrushless);
    SparkMaxConfig motorConfig = new SparkMaxConfig();
    motorConfig.encoder.positionConversionFactor(kArmEncoderDistPerPulse);
    motorConfig.closedLoop.p(kP);
    motorConfig.closedLoop.i(kI);
    motorConfig.closedLoop.d(kD);
    m_motor.configure(motorConfig, ResetMode.kResetSafeParameters, PersistMode.kPersistParameters);
    m_encoder = m_motor.getEncoder();
    m_pidController = m_motor.getClosedLoopController();

    if (RobotBase.isSimulation()) {
      SimDeviceSim deviceSim = new SimDeviceSim("SPARK MAX [" + m_motor.getDeviceId() + "]");
      m_encoderPositionSim = deviceSim.getDouble("Position");
      m_elevatorSim =
          new ElevatorSim(
              kElevatorGearbox,
              kElevatorGearing,
              kCarriageMass,
              kElevatorDrumRadius,
              kMinElevatorHeight,
              kMaxElevatorHeight,
              true,
              0);
    }
  }

  public void log() {
    SmartDashboard.putNumber("Elevator Height", m_encoder.getPosition());
  }

  public void goToHeight(double height) {
    m_goalHeight = height;
    m_pidController.setSetpoint(height, SparkBase.ControlType.kPosition);
  }

  public boolean isAtHeight() {
    return Math.abs(m_goalHeight - m_encoder.getPosition()) < 0.05;
  }

  @Override
  public void periodic() {
    log();
  }

  @Override
  public void simulationPeriodic() {
    m_elevatorSim.setInput(m_motor.get() * RobotController.getInputVoltage());
    m_elevatorSim.update(0.02);
    m_encoderPositionSim.set(m_elevatorSim.getPositionMeters());
  }

  public void stop() {
    m_motor.set(0);
  }
}
