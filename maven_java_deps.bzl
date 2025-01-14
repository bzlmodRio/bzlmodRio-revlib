load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_revlib_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_revrobotics_frc_revlib_java",
        artifact = "com.revrobotics.frc:REVLib-java:2025.0.1",
        artifact_sha256 = "1c2b1d76cf3f647d9415d4a31507151b54be36ba6fac1b002b415bd6a0d3aaba",
        server_urls = ["https://maven.revrobotics.com"],
    )

def setup_legacy_bzlmodrio_revlib_java_dependencies():
    __setup_bzlmodrio_revlib_java_dependencies(None)

setup_bzlmodrio_revlib_java_dependencies = module_extension(
    __setup_bzlmodrio_revlib_java_dependencies,
)
