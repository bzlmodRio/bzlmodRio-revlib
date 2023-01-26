load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_revlib_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_revrobotics_frc_revlib_java",
        artifact = "com.revrobotics.frc:REVLib-java:2022.0.0",
        artifact_sha256 = "bc8c863df9362b9116a5be67a328055d380b41ff9e0b7c558e91d4d469b85d25",
        server_urls = ["https://maven.revrobotics.com"],
    )

def setup_legacy_bzlmodrio_revlib_java_dependencies():
    __setup_bzlmodrio_revlib_java_dependencies(None)

setup_bzlmodrio_revlib_java_dependencies = module_extension(
    __setup_bzlmodrio_revlib_java_dependencies,
)
