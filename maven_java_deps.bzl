load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_revlib_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_revrobotics_frc_revlib_java",
        artifact = "com.revrobotics.frc:REVLib-java:2026.0.0",
        artifact_sha256 = "a17f6c9a70991674a8aff20d949e2759fe828a064896cb1212871313b943d4b7",
        server_urls = ["https://maven.revrobotics.com"],
    )

def setup_legacy_bzlmodrio_revlib_java_dependencies():
    __setup_bzlmodrio_revlib_java_dependencies(None)

setup_bzlmodrio_revlib_java_dependencies = module_extension(
    __setup_bzlmodrio_revlib_java_dependencies,
)
