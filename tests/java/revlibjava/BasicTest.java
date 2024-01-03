package revlibjava;

import com.revrobotics.CANSparkLowLevel.MotorType;
import com.revrobotics.CANSparkMax;
import org.junit.jupiter.api.Test;

class BasicTest {
  @Test
  void basicTest() {
    CANSparkMax sparkMax = new CANSparkMax(1, MotorType.kBrushless);
    System.out.println(sparkMax);
  }
}
