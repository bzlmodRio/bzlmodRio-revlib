
#include "gtest/gtest.h"
#include "rev/SparkMax.h"

TEST(BasicTest, Basic) {
  rev::spark::SparkMax sparkMax{wpi::CANPort::CAN_S0, 3,
                                rev::spark::SparkMax::MotorType::kBrushless};
}
