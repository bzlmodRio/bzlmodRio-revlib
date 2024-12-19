load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

cc_library_headers = """cc_library(
    name = "headers",
    hdrs = glob(["**"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)

filegroup(
    name = "header_files",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)
"""

cc_library_sources = """filegroup(
     name = "sources",
     srcs = glob(["**"]),
     visibility = ["//visibility:public"],
 )
 """

def __setup_bzlmodrio_revlib_cpp_dependencies(mctx):
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-4/REVLib-cpp-2025.0.0-beta-4-headers.zip",
        sha256 = "8650fb3e4709f9b1771e22985bdb4e2db7c649485dd0478ad4d8d374a099c31e",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-4/REVLib-cpp-2025.0.0-beta-4-windowsx86-64.zip",
        sha256 = "fcbefa83d1744b1cd54223edcacb099b323d189e7396bf21898d25485a56d564",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-4/REVLib-cpp-2025.0.0-beta-4-windowsx86-64static.zip",
        sha256 = "f0b9a8d8af28c3f9aa0b737202300f218b1eee1b9ae4d15a83c676652a8e5e9f",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-4/REVLib-cpp-2025.0.0-beta-4-linuxx86-64.zip",
        sha256 = "d6b352ce300d54e2472662d7a5e7b81198e7c89eac7167c14b8e4346d44d3d6b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-4/REVLib-cpp-2025.0.0-beta-4-linuxx86-64static.zip",
        sha256 = "f612c8fe12282f1856a0019c85e26e7e9ce1f41a541d1c1a290ebd711f9161a5",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-4/REVLib-cpp-2025.0.0-beta-4-linuxathena.zip",
        sha256 = "5989567782d4a27b70de0aabdcb6bb1c5a0ebca8ea9389589e38f3604db5b26c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-4/REVLib-cpp-2025.0.0-beta-4-linuxathenastatic.zip",
        sha256 = "d88b1250973f2dc6ffc08c0b029a45b13328ee33fcefadc85f5cf92e8c01ab3a",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-4/REVLib-cpp-2025.0.0-beta-4-osxuniversal.zip",
        sha256 = "3a44069a19ea2044c3b1d981e271692fe3a6934fe4e008a5b7c446f1578ec4a5",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-4/REVLib-cpp-2025.0.0-beta-4-osxuniversalstatic.zip",
        sha256 = "ac0871c7801275095368733561c95b3b136be4956763cf79019441aee08cbff5",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-4/REVLib-driver-2025.0.0-beta-4-headers.zip",
        sha256 = "4449acaeda5b29a62dfe6b98a6d13f78f8451049e1cb7b722b48f3f562df486f",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-4/REVLib-driver-2025.0.0-beta-4-windowsx86-64.zip",
        sha256 = "8ee07107e01c18cd8a3043977495336afa0ec1d8080dbdbe662f5b3561b1af52",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-4/REVLib-driver-2025.0.0-beta-4-windowsx86-64static.zip",
        sha256 = "0d79f84ef0b33f5e0aef2370f1858f525ed9f42093cb5ec1518d220b90af6012",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-4/REVLib-driver-2025.0.0-beta-4-linuxx86-64.zip",
        sha256 = "77171a7a52449158f58a302656da46223e07f513d343c6472615d57931da7492",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-4/REVLib-driver-2025.0.0-beta-4-linuxx86-64static.zip",
        sha256 = "59c4b62baf96f21cc8abf5841388c617e6feebbbcacdfbefb49e990f4cb5a3a4",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-4/REVLib-driver-2025.0.0-beta-4-linuxathena.zip",
        sha256 = "7936151d46c32ba6afae9c3a22c8db0769df98d8c49beb4c7afc81ea3c9ef288",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-4/REVLib-driver-2025.0.0-beta-4-linuxathenastatic.zip",
        sha256 = "cb023956c13d6429fbfa52dbf83447b848b592229cd9dcb7b69e45eebd4d0971",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-4/REVLib-driver-2025.0.0-beta-4-osxuniversal.zip",
        sha256 = "7c928880019f5538698645ba3fda96a0515ced540477870f7e305673cdae783b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-4/REVLib-driver-2025.0.0-beta-4-osxuniversalstatic.zip",
        sha256 = "04771ede0bf8d3ec62fc20e4394f6a3aedbb27c7beabc8226b20cbe7fb0c46e0",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
