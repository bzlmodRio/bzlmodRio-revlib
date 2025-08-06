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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.3/REVLib-cpp-2025.0.3-headers.zip",
        sha256 = "b453714e35c37a3fe5b9eb154c2af00ce5d35dbe1f63cde87e6dde327bd656ce",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.3/REVLib-cpp-2025.0.3-windowsx86-64.zip",
        sha256 = "8c87d8a94c77c162facc4353ab74f8bb9a0a0f90fb217aebfbaf7823cffaff02",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.3/REVLib-cpp-2025.0.3-windowsx86-64static.zip",
        sha256 = "11078cbb3cd9a7137c2fca6298c7a26925cb3162dcd48e94a5fcf303e316b64e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.3/REVLib-cpp-2025.0.3-linuxarm64.zip",
        sha256 = "b1b205e251962787094c3a7e8653d2d4d72e5e75cff639c88c21497fe00bb75a",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.3/REVLib-cpp-2025.0.3-linuxarm64static.zip",
        sha256 = "44d168d60dc52636739b2c19b6eeece5cc502f20ab4c1bf96bddcbded69ec129",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.3/REVLib-cpp-2025.0.3-linuxx86-64.zip",
        sha256 = "b3d52febf25eccc98bb2d615c291ca3fb3b38db0b21b25d1398adccee2a8d3f4",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.3/REVLib-cpp-2025.0.3-linuxx86-64static.zip",
        sha256 = "b30dbd7c8e77acd7731b96952b1342385ce1ef9e8c9dd727a213bff4c6deb4d6",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.3/REVLib-cpp-2025.0.3-linuxathena.zip",
        sha256 = "bc0545a046a8888a71e74954f288a65c961b3d169fcefc8f0601e08a48870724",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.3/REVLib-cpp-2025.0.3-linuxathenastatic.zip",
        sha256 = "5cedafc536d8c1c7c45bac2e24e728fe5d479fc43efda3c90ee5ffd72bc31189",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.3/REVLib-cpp-2025.0.3-linuxarm32.zip",
        sha256 = "24cc85273ab80babc97ce79b08b9f184b92bc0eee3fd4fb4b10227e436d5aa60",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.3/REVLib-cpp-2025.0.3-linuxarm32static.zip",
        sha256 = "32f38099c97f8f0deaef5460e4c81e96f75b3c152a02dba958ded7de3348620f",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.3/REVLib-cpp-2025.0.3-osxuniversal.zip",
        sha256 = "a4aa13e80b7d8b27031aef886e1f30fc1c8bcb70dc98d7d5af90136aa02d46dc",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLib.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libREVLibDriver.dylib @rpath/libREVLibDriver.dylib osx/universal/shared/libREVLib.dylib",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.3/REVLib-cpp-2025.0.3-osxuniversalstatic.zip",
        sha256 = "9423bb0ba05b9ece47f0df8cf4cf78907d3330b112e350bd6e4e98795e35c79e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.3/REVLib-driver-2025.0.3-headers.zip",
        sha256 = "549c4dac1bc2a0c72f3d4ed98accea03ed12b77d12d31ed4dc8ef378a2bb527c",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.3/REVLib-driver-2025.0.3-windowsx86-64.zip",
        sha256 = "79bb847d1735aefcc52d750156020a86a93528d34dee8a024758c9db32cd7db1",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.3/REVLib-driver-2025.0.3-windowsx86-64static.zip",
        sha256 = "f4909658d325cc70df1a9a3343494a77c5ba02587e572cdc80657436d16c479e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.3/REVLib-driver-2025.0.3-linuxarm64.zip",
        sha256 = "0940456e7d7c58821a1532c460da81d7850d9c0fcb43ddb099f48b3ec4b75ab8",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.3/REVLib-driver-2025.0.3-linuxarm64static.zip",
        sha256 = "ee5d43e8cf00f752257a7ad02daf1e4dda2f4d5b2c6d3e94770f9ec7e9b7696d",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.3/REVLib-driver-2025.0.3-linuxx86-64.zip",
        sha256 = "9b02a9a5ad5c6179ea913b4d914bdc561e82b3011903991e685ee4258889b14e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.3/REVLib-driver-2025.0.3-linuxx86-64static.zip",
        sha256 = "35689c73cadefc74ade56077e87c3772549be4d2407243c27ea89c879585e57b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.3/REVLib-driver-2025.0.3-linuxathena.zip",
        sha256 = "c9701c8b0163a43feb8229a30bb3ab95addb6973d019caa2836776ff3c30b96b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.3/REVLib-driver-2025.0.3-linuxathenastatic.zip",
        sha256 = "7720de7cda4b0f90a6da262c8f09d040a87de9904fa9076ec7ef56a291a3bed2",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.3/REVLib-driver-2025.0.3-linuxarm32.zip",
        sha256 = "71861f0179431fc2ec9bf7ad9f1967073d89b67eb9ae3276b4f6baf804725f77",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.3/REVLib-driver-2025.0.3-linuxarm32static.zip",
        sha256 = "ebf50e9fd894b399f4ef7ec25079fc761828b8e39ce050b5e827ae33f62e8917",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.3/REVLib-driver-2025.0.3-osxuniversal.zip",
        sha256 = "ca107458b929769e496b8bbdb07152123b157ea4f9f903a20b6d1b01966dc2b2",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.3/REVLib-driver-2025.0.3-osxuniversalstatic.zip",
        sha256 = "1bfb0439636838a657627c158a8682c66108b514f062f724306e695a9670c56d",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
