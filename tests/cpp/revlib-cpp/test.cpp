
#include "rev/CANSparkMax.h"
#include "gtest/gtest.h"

TEST(BasicTest, Basic) {
  rev::CANSparkMax sparkMax{3, rev::CANSparkMax::MotorType::kBrushless};
}
