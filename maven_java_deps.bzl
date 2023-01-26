load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_revlib_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_revrobotics_frc_revlib_java",
        artifact = "com.revrobotics.frc:REVLib-java:2022.1.0",
        artifact_sha256 = "fae2e0d0fa7e70512c3373f963b8f69f37faf97979528e94e3520b21eb6d1026",
        server_urls = ["https://maven.revrobotics.com"],
    )

def setup_legacy_bzlmodrio_revlib_java_dependencies():
    __setup_bzlmodrio_revlib_java_dependencies(None)

setup_bzlmodrio_revlib_java_dependencies = module_extension(
    __setup_bzlmodrio_revlib_java_dependencies,
)
