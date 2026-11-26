load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_revlib_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_revrobotics_frc_revlib_java",
        artifact = "com.revrobotics.frc:REVLib-java:2027.0.0-alpha-9",
        artifact_sha256 = "94da9292739be5327002888e1dc103da031ea22152c49e9febb8b15ca8f81e8b",
        server_urls = ["https://maven.revrobotics.com"],
    )

setup_bzlmodrio_revlib_java_dependencies = module_extension(
    __setup_bzlmodrio_revlib_java_dependencies,
)
