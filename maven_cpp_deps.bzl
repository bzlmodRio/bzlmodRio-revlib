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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-2/REVLib-cpp-2025.0.0-beta-2-headers.zip",
        sha256 = "1246aac359e2f743ad0e9c43522861d34756edfd469054931ba005f009bb32ef",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-2/REVLib-cpp-2025.0.0-beta-2-windowsx86-64.zip",
        sha256 = "8153a45f97efe50702f45d2fec3589c91f6d2e3462fb959ebf94414944f94a29",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-2/REVLib-cpp-2025.0.0-beta-2-windowsx86-64static.zip",
        sha256 = "76a47a6b6922f7d5c32a61f174e5a111341683aa5c4ba826a48a5dd6002b65cf",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-2/REVLib-cpp-2025.0.0-beta-2-linuxarm64.zip",
        sha256 = "29d907278493209c7aafd933c524360650599298578009edb27120c715cea113",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-2/REVLib-cpp-2025.0.0-beta-2-linuxarm64static.zip",
        sha256 = "040ee466c7f5ce34c9d296b65c979ef070244727d2ef664530868ae1b3b0b8c4",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-2/REVLib-cpp-2025.0.0-beta-2-linuxx86-64.zip",
        sha256 = "375813875767f44dd23b9093ec4ed32d13e92602b412f2cf6b7b9ff069e51090",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-2/REVLib-cpp-2025.0.0-beta-2-linuxx86-64static.zip",
        sha256 = "b6769a0735ae8450180c2f8f0d8255080cb4c47f05f0becbff0475f2cf773229",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-2/REVLib-cpp-2025.0.0-beta-2-linuxathena.zip",
        sha256 = "79b5d12ab2201124537eb70c779542cf14d9039463cf0a9a14b5b73fa2032cdd",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-2/REVLib-cpp-2025.0.0-beta-2-linuxathenastatic.zip",
        sha256 = "234eba6b44e929600b3a81dd700e09d2ff10229ff6e7ab57ee438bfa56625966",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-2/REVLib-cpp-2025.0.0-beta-2-linuxarm32.zip",
        sha256 = "6fa62ab3f4a9bdfd2e99b00c23c0e70c16a5368d3a0ad1e4818d6d1552ed3757",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-2/REVLib-cpp-2025.0.0-beta-2-linuxarm32static.zip",
        sha256 = "df3e6f1014696d2b23e3063b5fdf1dcf2ef2c4303c76391ef36d7f4122d8a1ed",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-2/REVLib-cpp-2025.0.0-beta-2-osxuniversal.zip",
        sha256 = "ab7f470f2b50aba102628e330ddab7eb7f68ea86a01af40aa4990c85cd0b864c",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-2/REVLib-cpp-2025.0.0-beta-2-osxuniversalstatic.zip",
        sha256 = "0f2f632e49c3a2825db07756fedb98f9126665bacb014baab40b682d7ba5c6ec",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-2/REVLib-driver-2025.0.0-beta-2-headers.zip",
        sha256 = "7f06b4471ba5f13bdb75d0b7dfc7ee790b070ce4c603cfe04779ee018781cf6a",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-2/REVLib-driver-2025.0.0-beta-2-windowsx86-64.zip",
        sha256 = "14054569796a1fac9e000789f4d888d7500eef14ec69a4789b4a704536f4680d",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-2/REVLib-driver-2025.0.0-beta-2-windowsx86-64static.zip",
        sha256 = "121e388057e638b128be79df6bce19697542690bb3c2a371c8c1a7aaedf94763",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-2/REVLib-driver-2025.0.0-beta-2-linuxarm64.zip",
        sha256 = "3ef3e87ba1bef8af5a7a6c79a13da387bfb2e7fd07557a32c322b60fdd36fdc4",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-2/REVLib-driver-2025.0.0-beta-2-linuxarm64static.zip",
        sha256 = "823debbef8077cd31c7002bd049438b8a41410c6f55aacc503b90ca80c6891ac",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-2/REVLib-driver-2025.0.0-beta-2-linuxx86-64.zip",
        sha256 = "54233e23a70e1cbdebe6c177ff6f4490c775bbd2702ab601c0770a93b7a4c500",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-2/REVLib-driver-2025.0.0-beta-2-linuxx86-64static.zip",
        sha256 = "f6b84ab5a0514d09a4a618736ad44fe9072b75ddaab58a761377008ed92a87eb",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-2/REVLib-driver-2025.0.0-beta-2-linuxathena.zip",
        sha256 = "00917167dcac6644811c3b8ca82b4dc005088bddf4022c242fee47d76df2c02c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-2/REVLib-driver-2025.0.0-beta-2-linuxathenastatic.zip",
        sha256 = "f3bc4d3d0b8cb6020da4933e2554ceb8a8937b20262d8ba9f60abace5afd7523",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-2/REVLib-driver-2025.0.0-beta-2-linuxarm32.zip",
        sha256 = "b0b83d0be3d399ca438706462741990a5f4ba9afc37cdd071fd81ee81d9bf8db",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-2/REVLib-driver-2025.0.0-beta-2-linuxarm32static.zip",
        sha256 = "7a3581ace074e1017347683bf244c75902f9e84b7668d1f1c35ba0dac274c3fd",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-2/REVLib-driver-2025.0.0-beta-2-osxuniversal.zip",
        sha256 = "af021a3154b508663785b69c6d8e51d3b0246e356f1fd6c669398b16880f1c7e",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-2/REVLib-driver-2025.0.0-beta-2-osxuniversalstatic.zip",
        sha256 = "1e9e9f9d7edb712e641544878c00a9c094826f94bb9f63983c5a7104de393ece",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
