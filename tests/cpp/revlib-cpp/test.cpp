
#include "gtest/gtest.h"
#include "rev/CANSparkMax.h"

TEST(BasicTest, BasicTest) {
    rev::CANSparkMax sparkMax{3, rev::CANSparkMax::MotorType::kBrushless};
}