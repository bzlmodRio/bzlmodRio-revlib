load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")

def __setup_bzlmodrio_revlib_java_dependencies(mctx):
    jvm_maven_import_external(
        name = "com_revrobotics_frc_revlib_java",
        artifact = "com.revrobotics.frc:REVLib-java:2027.0.0-alpha-6",
        artifact_sha256 = "cd542d9c52451452013caee90fd2681069cdab5a36eeac04bb71a1c6ebc650fb",
        server_urls = ["https://maven.revrobotics.com"],
    )

setup_bzlmodrio_revlib_java_dependencies = module_extension(
    __setup_bzlmodrio_revlib_java_dependencies,
)
