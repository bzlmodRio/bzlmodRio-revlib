load("//styleguide:java_styleguide.bzl", "java_styleguide")

java_library(
    name = "commands",
    srcs = glob(["*.java"]),
    visibility = ["//visibility:public"],
    deps = [
        "//robot-java/src/main/java/frc/robot/subsystems",
        "@bzlmodrio-allwpilib//libraries/java/wpilibNewCommands",
        "@bzlmodrio-allwpilib//libraries/java/wpilibj",
    ],
)

java_styleguide(name = "commands")
