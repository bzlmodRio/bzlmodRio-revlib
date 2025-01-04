load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_revlib_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_revrobotics_frc_revlib_java",
        artifact = "com.revrobotics.frc:REVLib-java:2025.0.0",
        artifact_sha256 = "30002ed718e8b77140b2913b01e39ea2495faad06ba4da53fed936aa7e81beb6",
        server_urls = ["https://maven.revrobotics.com"],
    )

def setup_legacy_bzlmodrio_revlib_java_dependencies():
    __setup_bzlmodrio_revlib_java_dependencies(None)

setup_bzlmodrio_revlib_java_dependencies = module_extension(
    __setup_bzlmodrio_revlib_java_dependencies,
)
