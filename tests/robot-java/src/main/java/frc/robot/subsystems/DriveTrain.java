// Copyright (c) FIRST and other WPILib contributors.
// Open Source Software; you can modify and/or share it under the terms of
// the WPILib BSD license file in the root directory of this project.

package frc.robot.subsystems;

import com.revrobotics.RelativeEncoder;
import com.revrobotics.spark.SparkBase;
import com.revrobotics.spark.SparkMax;
import com.revrobotics.spark.config.SparkMaxConfig;
import edu.wpi.first.hal.SimDouble;
import edu.wpi.first.math.geometry.Rotation2d;
import edu.wpi.first.math.kinematics.DifferentialDriveOdometry;
// import edu.wpi.first.wpilibj.ADXRS450_Gyro;
import edu.wpi.first.wpilibj.RobotBase;
import edu.wpi.first.wpilibj.RobotController;
import edu.wpi.first.wpilibj.drive.DifferentialDrive;
// import edu.wpi.first.wpilibj.simulation.ADXRS450_GyroSim;
import edu.wpi.first.wpilibj.simulation.DifferentialDrivetrainSim;
import edu.wpi.first.wpilibj.simulation.SimDeviceSim;
import edu.wpi.first.wpilibj.smartdashboard.Field2d;
import edu.wpi.first.wpilibj.smartdashboard.SmartDashboard;
import edu.wpi.first.wpilibj2.command.SubsystemBase;

public class DriveTrain extends SubsystemBase {
  private final SparkMax m_leftLeader;
  private final SparkMax m_leftFollower; // NOPMD(SingularField)
  private final SparkMax m_rightLeader;
  private final SparkMax m_rightFollower; // NOPMD(SingularField)

  private final DifferentialDrive m_drive;

  private final RelativeEncoder m_leftEncoder;
  private final RelativeEncoder m_rightEncoder;
  // private final ADXRS450_Gyro m_gyro;

  private final DifferentialDriveOdometry m_odometry;
  private final Field2d m_field;

  // Sim
  // private ADXRS450_GyroSim m_gyroSim;
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
        leftLeaderConfig,
        SparkBase.ResetMode.kResetSafeParameters,
        SparkBase.PersistMode.kPersistParameters);

    m_leftFollower =
        new SparkMax(0, PortMap.kDrivetrainMotorLeftBPort, SparkMax.MotorType.kBrushless);
    SparkMaxConfig leftFollowerConfig = new SparkMaxConfig().apply(leftLeaderConfig);
    leftFollowerConfig.follow(m_leftLeader);
    m_leftLeader.configure(
        leftFollowerConfig,
        SparkBase.ResetMode.kResetSafeParameters,
        SparkBase.PersistMode.kPersistParameters);

    m_rightLeader =
        new SparkMax(0, PortMap.kDrivetrainMotorRightAPort, SparkMax.MotorType.kBrushless);
    SparkMaxConfig rightLeaderConfig = new SparkMaxConfig().apply(baseConfig);
    m_rightLeader.configure(
        rightLeaderConfig,
        SparkBase.ResetMode.kResetSafeParameters,
        SparkBase.PersistMode.kPersistParameters);

    m_rightFollower =
        new SparkMax(0, PortMap.kDrivetrainMotorRightBPort, SparkMax.MotorType.kBrushless);
    SparkMaxConfig rightFollowerConfig = new SparkMaxConfig().apply(rightLeaderConfig);
    rightFollowerConfig.follow(m_rightLeader);
    m_rightFollower.configure(
        rightFollowerConfig,
        SparkBase.ResetMode.kResetSafeParameters,
        SparkBase.PersistMode.kPersistParameters);

    m_drive = new DifferentialDrive(m_leftLeader, m_rightLeader);

    m_leftEncoder = m_leftLeader.getEncoder();
    m_rightEncoder = m_rightLeader.getEncoder();
    // m_gyro = new ADXRS450_Gyro();

    m_odometry = new DifferentialDriveOdometry(new Rotation2d(), 0, 0);
    m_field = new Field2d();

    SmartDashboard.putData("Field", m_field);

    if (RobotBase.isSimulation()) {
      // m_gyroSim = new ADXRS450_GyroSim(m_gyro);

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
              DifferentialDrivetrainSim.KitbotMotor.kDualCIMPerSide,
              DifferentialDrivetrainSim.KitbotGearing.k12p75,
              DifferentialDrivetrainSim.KitbotWheelSize.kSixInch,
              null);
    }
  }

  public void log() {
    SmartDashboard.putNumber("Left Distance", m_leftEncoder.getPosition());
    SmartDashboard.putNumber("Right Distance", m_rightEncoder.getPosition());
    SmartDashboard.putNumber("Left Speed", m_leftEncoder.getVelocity());
    SmartDashboard.putNumber("Right Speed", m_rightEncoder.getVelocity());
    // SmartDashboard.putNumber("Gyro", m_gyro.getAngle());
  }

  public void arcadeDrive(double throttle, double rotation) {
    m_drive.arcadeDrive(throttle, rotation);
  }

  public double getHeading() {
    return 0; // m_gyro.getAngle();
  }

  /** Reset the robots sensors to the zero states. */
  public void reset() {
    // m_gyro.reset();
    m_leftEncoder.setPosition(0);
    m_rightEncoder.setPosition(0);
  }

  public double getAverageDistance() {
    return (m_leftEncoder.getPosition() + m_rightEncoder.getPosition()) / 2;
  }

  void updateOdometry() {
    m_odometry.update(new Rotation2d(), m_leftEncoder.getPosition(), m_rightEncoder.getPosition());
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
        m_leftLeader.get() * RobotController.getInputVoltage(),
        m_rightLeader.get() * RobotController.getInputVoltage());
    m_drivetrainSimulator.update(0.02);

    m_leftEncoderPositionSim.set(m_drivetrainSimulator.getLeftPosition());
    m_leftEncoderVelocitySim.set(m_drivetrainSimulator.getLeftVelocity());
    m_rightEncoderPositionSim.set(m_drivetrainSimulator.getRightPosition());
    m_rightEncoderVelocitySim.set(m_drivetrainSimulator.getRightVelocity());
    // m_gyroSim.setAngle(-m_drivetrainSimulator.getHeading().getDegrees());
  }

  public void stop() {
    m_leftLeader.set(0);
    m_rightLeader.set(0);
  }
}
