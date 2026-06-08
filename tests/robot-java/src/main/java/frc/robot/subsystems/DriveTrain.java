// Copyright (c) FIRST and other WPILib contributors.
// Open Source Software; you can modify and/or share it under the terms of
// the WPILib BSD license file in the root directory of this project.

package frc.robot.subsystems;

import com.revrobotics.PersistMode;
import com.revrobotics.RelativeEncoder;
import com.revrobotics.ResetMode;
import com.revrobotics.spark.SparkMax;
import com.revrobotics.spark.config.SparkMaxConfig;
import org.wpilib.command2.SubsystemBase;
import org.wpilib.drive.DifferentialDrive;
import org.wpilib.framework.RobotBase;
import org.wpilib.hardware.hal.SimDouble;
import org.wpilib.hardware.imu.OnboardIMU;
import org.wpilib.math.kinematics.DifferentialDriveOdometry;
import org.wpilib.simulation.DifferentialDrivetrainSim;
import org.wpilib.simulation.OnboardIMUSim;
import org.wpilib.simulation.SimDeviceSim;
import org.wpilib.smartdashboard.Field2d;
import org.wpilib.smartdashboard.SmartDashboard;
import org.wpilib.system.RobotController;

public class DriveTrain extends SubsystemBase {
  private final SparkMax m_leftLeader;
  private final SparkMax m_leftFollower; // NOPMD(SingularField)
  private final SparkMax m_rightLeader;
  private final SparkMax m_rightFollower; // NOPMD(SingularField)

  private final DifferentialDrive m_drive;

  private final RelativeEncoder m_leftEncoder;
  private final RelativeEncoder m_rightEncoder;
  private final OnboardIMU m_gyro;

  private final DifferentialDriveOdometry m_odometry;
  private final Field2d m_field;

  // Sim
  private DifferentialDrivetrainSim m_drivetrainSimulator;

  private SimDouble m_leftEncoderPositionSim;
  private SimDouble m_leftEncoderVelocitySim;
  private SimDouble m_rightEncoderPositionSim;
  private SimDouble m_rightEncoderVelocitySim;

  public DriveTrain() {
    SparkMaxConfig baseConfig = new SparkMaxConfig();
    baseConfig.encoder.positionConversionFactor((4.0 / 12.0 * Math.PI) / 360.0);

    m_leftLeader =
        new SparkMax(0, PortMap.kDrivetrainMotorLeftAPort, SparkMax.MotorType.kBrushless);
    SparkMaxConfig leftLeaderConfig = new SparkMaxConfig().apply(baseConfig);
    m_leftLeader.configure(
        leftLeaderConfig, ResetMode.kResetSafeParameters, PersistMode.kPersistParameters);

    m_leftFollower =
        new SparkMax(0, PortMap.kDrivetrainMotorLeftBPort, SparkMax.MotorType.kBrushless);
    SparkMaxConfig leftFollowerConfig = new SparkMaxConfig().apply(leftLeaderConfig);
    leftFollowerConfig.follow(m_leftLeader);
    m_leftLeader.configure(
        leftFollowerConfig, ResetMode.kResetSafeParameters, PersistMode.kPersistParameters);

    m_rightLeader =
        new SparkMax(0, PortMap.kDrivetrainMotorRightAPort, SparkMax.MotorType.kBrushless);
    SparkMaxConfig rightLeaderConfig = new SparkMaxConfig().apply(baseConfig);
    m_rightLeader.configure(
        rightLeaderConfig, ResetMode.kResetSafeParameters, PersistMode.kPersistParameters);

    m_rightFollower =
        new SparkMax(0, PortMap.kDrivetrainMotorRightBPort, SparkMax.MotorType.kBrushless);
    SparkMaxConfig rightFollowerConfig = new SparkMaxConfig().apply(rightLeaderConfig);
    rightFollowerConfig.follow(m_rightLeader);
    m_rightFollower.configure(
        rightFollowerConfig, ResetMode.kResetSafeParameters, PersistMode.kPersistParameters);

    m_drive = new DifferentialDrive(m_leftLeader, m_rightLeader);

    m_leftEncoder = m_leftLeader.getEncoder();
    m_rightEncoder = m_rightLeader.getEncoder();
    m_gyro = new OnboardIMU(OnboardIMU.MountOrientation.FLAT);

    m_odometry = new DifferentialDriveOdometry(m_gyro.getRotation2d(), 0, 0);
    m_field = new Field2d();

    SmartDashboard.putData("Field", m_field);

    if (RobotBase.isSimulation()) {

      SimDeviceSim leftDeviceSim =
          new SimDeviceSim("SPARK MAX [" + m_leftLeader.getDeviceId() + "] RELATIVE ENCODER");
      m_leftEncoderPositionSim = leftDeviceSim.getDouble("Position");
      m_leftEncoderVelocitySim = leftDeviceSim.getDouble("Velocity");

      SimDeviceSim rightDeviceSim =
          new SimDeviceSim("SPARK MAX [" + m_rightLeader.getDeviceId() + "] RELATIVE ENCODER");
      m_rightEncoderPositionSim = rightDeviceSim.getDouble("Position");
      m_rightEncoderVelocitySim = rightDeviceSim.getDouble("Velocity");

      // m_leftEncoderSim = new EncoderSim(m_leftEncoder);
      // m_rightEncoderSim = new EncoderSim(m_rightEncoder);
      m_drivetrainSimulator =
          DifferentialDrivetrainSim.createKitbotSim(
              DifferentialDrivetrainSim.KitbotMotor.DUAL_CIM_PER_SIDE,
              DifferentialDrivetrainSim.KitbotGearing.RATIO_12P75,
              DifferentialDrivetrainSim.KitbotWheelSize.SIX_INCH,
              null);
    }
  }

  public void log() {
    SmartDashboard.putNumber("Left Distance", m_leftEncoder.getPosition().get());
    SmartDashboard.putNumber("Right Distance", m_rightEncoder.getPosition().get());
    SmartDashboard.putNumber("Left Speed", m_leftEncoder.getVelocity().get());
    SmartDashboard.putNumber("Right Speed", m_rightEncoder.getVelocity().get());
    SmartDashboard.putNumber("Gyro", m_gyro.getYawRadians());
  }

  public void arcadeDrive(double throttle, double rotation) {
    m_drive.arcadeDrive(throttle, rotation);
  }

  public double getHeading() {
    return m_gyro.getYawRadians();
  }

  /** Reset the robots sensors to the zero states. */
  public void reset() {
    m_gyro.resetYaw();
    m_leftEncoder.setPosition(0);
    m_rightEncoder.setPosition(0);
  }

  public double getAverageDistance() {
    return (m_leftEncoder.getPosition().get() + m_rightEncoder.getPosition().get()) / 2;
  }

  void updateOdometry() {
    m_odometry.update(
        m_gyro.getRotation2d(),
        m_leftEncoder.getPosition().get(),
        m_rightEncoder.getPosition().get());
    m_field.setRobotPose(m_odometry.getPose());
  }

  @Override
  public void periodic() {
    updateOdometry();
    log();
  }

  @Override
  public void simulationPeriodic() {
    m_drivetrainSimulator.setInputs(
        m_leftLeader.getThrottle() * RobotController.getInputVoltage(),
        m_rightLeader.getThrottle() * RobotController.getInputVoltage());
    m_drivetrainSimulator.update(0.02);

    m_leftEncoderPositionSim.set(m_drivetrainSimulator.getLeftPosition());
    m_leftEncoderVelocitySim.set(m_drivetrainSimulator.getLeftVelocity());
    m_rightEncoderPositionSim.set(m_drivetrainSimulator.getRightPosition());
    m_rightEncoderVelocitySim.set(m_drivetrainSimulator.getRightVelocity());
    OnboardIMUSim.setYaw(-m_drivetrainSimulator.getHeading().getDegrees());
  }

  public void stop() {
    m_leftLeader.setThrottle(0);
    m_rightLeader.setThrottle(0);
  }
}
