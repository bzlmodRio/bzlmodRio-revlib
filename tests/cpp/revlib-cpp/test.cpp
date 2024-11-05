
#include "rev/SparkMax.h"
#include "gtest/gtest.h"

TEST(BasicTest, Basic) {
  rev::spark::SparkMax sparkMax{3, rev::spark::SparkMax::MotorType::kBrushless};
}
