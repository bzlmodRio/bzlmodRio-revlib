package revlibjava;

import com.revrobotics.spark.SparkLowLevel.MotorType;
import com.revrobotics.spark.SparkMax;
import org.junit.jupiter.api.Test;
import org.wpilib.hardware.bus.CANPort;

class BasicTest {
  @Test
  void basicTest() {
    SparkMax sparkMax = new SparkMax(CANPort.CAN_S0, 1, MotorType.kBrushless);
    System.out.println(sparkMax);
  }
}
