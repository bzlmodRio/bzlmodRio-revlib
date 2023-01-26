
#include <iostream>
#include "rev/CANSparkMax.h"
#include <thread>         
#include <chrono>         

int main() {
    std::cout << "Hello World" << std::endl;

    rev::CANSparkMax sparkMax{3, rev::CANSparkMax::MotorType::kBrushless};

    std::cout << "Running  some loops" << std::endl;
    for (int i = 0; i < 500; ++i) {
        std::this_thread::sleep_for(std::chrono::microseconds(20));
    }
    std::cout << "Done" << std::endl;

    return 0;
}