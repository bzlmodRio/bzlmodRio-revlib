package revlibjava;

import com.revrobotics.spark.SparkLowLevel.MotorType;
import com.revrobotics.spark.SparkMax;
import org.junit.jupiter.api.Test;

class BasicTest {
  @Test
  void basicTest() {
    SparkMax sparkMax = new SparkMax(0, 1, MotorType.kBrushless);
    System.out.println(sparkMax);
  }
}
