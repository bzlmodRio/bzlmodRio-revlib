
#include <chrono>
#include <iostream>
#include <thread>

#include "rev/SparkMax.h"

int main() {
  std::cout << "Hello World" << std::endl;

  rev::spark::SparkMax sparkMax{0, 3, rev::spark::SparkMax::MotorType::kBrushless};

  std::cout << "Running  some loops" << std::endl;
  for (int i = 0; i < 500; ++i) {
    std::this_thread::sleep_for(std::chrono::microseconds(20));
  }
  std::cout << "Done" << std::endl;

  return 0;
}
