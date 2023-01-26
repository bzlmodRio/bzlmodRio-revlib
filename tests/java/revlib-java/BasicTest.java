
package bazelrio_test;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
import com.revrobotics.CANSparkMaxLowLevel.MotorType;

import org.junit.jupiter.api.Test;

import com.revrobotics.CANSparkMax;

class BasicTest {
  @Test
  void basicTest() {
    CANSparkMax sparkMax = new CANSparkMax(1, MotorType.kBrushless);
  }
}
