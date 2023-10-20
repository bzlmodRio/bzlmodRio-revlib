load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

filegroup_all = """filegroup(
     name = "all",
     srcs = glob(["**"]),
     visibility = ["//visibility:public"],
 )
 """

cc_library_headers = """cc_library(
    name = "headers",
    hdrs = glob(["**"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)
"""

cc_library_sources = """filegroup(
     name = "sources",
     srcs = glob(["**"]),
     visibility = ["//visibility:public"],
 )
 """

cc_library_static = """

cc_library(
    name = "static_libs",
    srcs = glob(["**/*.lib", "**/*.a"]),
    visibility = ["//visibility:public"],
)
"""

cc_library_shared = """
JNI_PATTERN=[
    "**/*jni.dll",
    "**/*jni.so*",
    "**/*jni.dylib",
    "**/*_java*.dll",
    "**/lib*_java*.dylib",
    "**/lib*_java*.so",
]

static_srcs = glob([
        "**/*.lib",
        "**/*.a"
    ],
    exclude=["**/*jni.lib"]
)
shared_srcs = glob([
        "**/*.dll",
        "**/*.so*",
        "**/*.dylib",
    ],
    exclude=JNI_PATTERN + ["**/*.so.debug"]
)
shared_jni_srcs = glob(JNI_PATTERN, exclude=["**/*.so.debug"])

filegroup(
    name = "static_libs",
    srcs = static_srcs,
    visibility = ["//visibility:public"],
)

filegroup(
    name = "shared_libs",
    srcs = shared_srcs,
    visibility = ["//visibility:public"],
)

filegroup(
    name = "shared_jni_libs",
    srcs = shared_jni_srcs,
    visibility = ["//visibility:public"],
)
"""

def __setup_bzlmodrio_revlib_cpp_dependencies(mctx):
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.0.0/REVLib-cpp-2024.0.0-headers.zip",
        sha256 = "137cc4095bfc8368cf58eaa8d9002e66b0da940e29828894b2591d768a7b25d2",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.0.0/REVLib-cpp-2024.0.0-windowsx86-64.zip",
        sha256 = "5b4601aac26c17bc4059839806d6c4f923f879fb9c719cda697d986f6760f923",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.0.0/REVLib-cpp-2024.0.0-windowsx86-64static.zip",
        sha256 = "c0f8681e6c7e4c64ed6eb07771558cdde5bc3a61770ca6f9dac7f1f15c802644",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.0.0/REVLib-cpp-2024.0.0-linuxarm64.zip",
        sha256 = "a5be0d6ace589425f3a8f5510ba870c98c760d34a2b569c1abcae42b92aec872",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.0.0/REVLib-cpp-2024.0.0-linuxarm64static.zip",
        sha256 = "1b4a60e715d83c3af1af22fef8bbbffa5ff0fd1050b8468f8d332036f8b2342b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.0.0/REVLib-cpp-2024.0.0-linuxx86-64.zip",
        sha256 = "475bec690e59804b51f75726f79d9a26efe6f59c7109de4f575eef5d6f1a8ac4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.0.0/REVLib-cpp-2024.0.0-linuxx86-64static.zip",
        sha256 = "132f356e3d14c54958af6ef78056e76278e155a89dfe4513344bea3adb3abb45",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.0.0/REVLib-cpp-2024.0.0-linuxathena.zip",
        sha256 = "a22937392e5338d3ce9b55842fa9e375531d5ccb60343ad153df59b216ae93ae",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.0.0/REVLib-cpp-2024.0.0-linuxathenastatic.zip",
        sha256 = "7dd7e53fc492537a49b9c74967de814eca1dc0239c2b16429ebd01c11133c67f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.0.0/REVLib-cpp-2024.0.0-linuxarm32.zip",
        sha256 = "981f4250202399e093d346893c86d8615d899fd031264067dee74b1f72c1b052",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.0.0/REVLib-cpp-2024.0.0-linuxarm32static.zip",
        sha256 = "e3f69a5314172dbd34a1c6e9dfa8eb74c69d5bf785f7b5e229cea8f0d5e54131",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.0.0/REVLib-cpp-2024.0.0-osxuniversal.zip",
        sha256 = "2ca4073c69feafa60eec09a3964f4056b013216df5ee7a6e03d9b77302f9e7f9",
        build_file_content = cc_library_shared,
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLib.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libREVLibDriver.dylib @rpath/libREVLibDriver.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libcameraserver.dylib @rpath/libcameraserver.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libcscore.dylib @rpath/libcscore.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libntcore.dylib @rpath/libntcore.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libwpiHal.dylib @rpath/libwpiHal.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libwpilibc.dylib @rpath/libwpilibc.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libwpimath.dylib @rpath/libwpimath.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libwpinet.dylib @rpath/libwpinet.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libwpiutil.dylib @rpath/libwpiutil.dylib osx/universal/shared/libREVLib.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.0.0/REVLib-cpp-2024.0.0-osxuniversalstatic.zip",
        sha256 = "0732212a5022d319a3190a9637ba527931f3dc6e889b8701caf2587adca45a74",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.0.0/REVLib-driver-2024.0.0-headers.zip",
        sha256 = "3fe4b8c6c7f5efb732c39732f6a82e58090d8bc8c08859557654935a65205e27",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.0.0/REVLib-driver-2024.0.0-windowsx86-64.zip",
        sha256 = "84d7d3ff37526ca3936b024c6e373f0887e53c7632bcb03813bd1c27b3a8536f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.0.0/REVLib-driver-2024.0.0-windowsx86-64static.zip",
        sha256 = "58a88165019e57d7e54b430cbc632d12ba379dccc4a624ba28bf4aea2fa6498c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.0.0/REVLib-driver-2024.0.0-linuxarm64.zip",
        sha256 = "308dfea7c0aee7668cb07080043dc4d59c5e302c09b618e4e38ed89ebd26c62a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.0.0/REVLib-driver-2024.0.0-linuxarm64static.zip",
        sha256 = "cc80b0fffa8d61a7c5e2e0b833b7ee2af0b0c9737cf0a436be746f29bf8fb2c6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.0.0/REVLib-driver-2024.0.0-linuxx86-64.zip",
        sha256 = "c909fc3f6375053f78c56b07a17406cb4927891f59359f54d74cbb09a7f6f644",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.0.0/REVLib-driver-2024.0.0-linuxx86-64static.zip",
        sha256 = "1c236bf2849fc52add6fc73ac86ddc93f0b15b756d89e8455ea62d4920da2285",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.0.0/REVLib-driver-2024.0.0-linuxathena.zip",
        sha256 = "ab28aa461bbf92088b2d4bca1f3e1ef6002fd59cab69abe4b4e1b2c0b95a1587",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.0.0/REVLib-driver-2024.0.0-linuxathenastatic.zip",
        sha256 = "63da8467358eeddff8b85c534c96a59fd5dc909613d8d7ada13e0e29b7234417",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.0.0/REVLib-driver-2024.0.0-linuxarm32.zip",
        sha256 = "95852ee24bc1e0d419156d315a6467c2ee18f91c3f6dee0a3a6184002146c12a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.0.0/REVLib-driver-2024.0.0-linuxarm32static.zip",
        sha256 = "f13768efa8799faf35ffb07c48b628d8c20ad75ecfd3c284820bd9f656fce296",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.0.0/REVLib-driver-2024.0.0-osxuniversal.zip",
        sha256 = "3e57e6058a15dfffb1a2bea701d9c8e1536876bb37800083d2448aa393b25869",
        build_file_content = cc_library_shared,
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLibDriver.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libwpiHal.dylib @rpath/libwpiHal.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libwpimath.dylib @rpath/libwpimath.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libwpiutil.dylib @rpath/libwpiutil.dylib osx/universal/shared/libREVLibDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.0.0/REVLib-driver-2024.0.0-osxuniversalstatic.zip",
        sha256 = "a45411bd583a1446b78bf81f4c47f9af059a26974c468cbb3f7d971a0ef629c9",
        build_file_content = cc_library_static,
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
