load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_revlib_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_revrobotics_frc_revlib_java",
        artifact = "com.revrobotics.frc:REVLib-java:2027.0.0-alpha-3",
        artifact_sha256 = "5cf72410e2c1bdcd944a2c719dfdfdb6d0a844049c71ac4d091937be948cfe34",
        server_urls = ["https://maven.revrobotics.com"],
    )

setup_bzlmodrio_revlib_java_dependencies = module_extension(
    __setup_bzlmodrio_revlib_java_dependencies,
)
