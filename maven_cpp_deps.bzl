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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-3/REVLib-cpp-2025.0.0-beta-3-headers.zip",
        sha256 = "4ded7feb33f44cc24c49021bc12d8594f2eaca3cd8d63b825b660ec4cd2c5df3",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-3/REVLib-cpp-2025.0.0-beta-3-windowsx86-64.zip",
        sha256 = "baeb8419ffdc44dd8dc7c96a8e09d841dc2d1900717e8b3a616b76cc05454d84",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-3/REVLib-cpp-2025.0.0-beta-3-windowsx86-64static.zip",
        sha256 = "b07e8bf45b521646dfef0a6dc22df30121886196fb42c09e6b4df0cab21a6d17",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-3/REVLib-cpp-2025.0.0-beta-3-linuxarm64.zip",
        sha256 = "cf1f5ad9c0ae4b69d4f4a0fbfc3cd2acb034e84fbb05d85d31dca8a46474a13f",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-3/REVLib-cpp-2025.0.0-beta-3-linuxarm64static.zip",
        sha256 = "560dba931a4f88a1b8f9731bb78cd6f5a99d8720520bc384ea96454c9f3c14b9",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-3/REVLib-cpp-2025.0.0-beta-3-linuxx86-64.zip",
        sha256 = "e743e2ee830a1393ea016a63eb2b7a2109b0903bc276518b5d221ac07d21f512",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-3/REVLib-cpp-2025.0.0-beta-3-linuxx86-64static.zip",
        sha256 = "ad25d74c3a8aec0c3949e63db0d1e75d56e7c6b5fb4561dce06c905e393c5bd9",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-3/REVLib-cpp-2025.0.0-beta-3-linuxathena.zip",
        sha256 = "39d638f435d8252c2356b0488f40488d81ed9bc80b7a4279da4137b72ffc02e0",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-3/REVLib-cpp-2025.0.0-beta-3-linuxathenastatic.zip",
        sha256 = "a09fd1bc31a0ede46009354ce5d6e66a3eb8175724083fabfaec1a736b868d41",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-3/REVLib-cpp-2025.0.0-beta-3-linuxarm32.zip",
        sha256 = "00d9ac11f879f05ccb266f136da80133bf3d4019620e0e6008f34141d624a059",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-3/REVLib-cpp-2025.0.0-beta-3-linuxarm32static.zip",
        sha256 = "853ecc6b478a9d33faa803a62f2265f6e4eb78a15f5706a6363b8363a725a240",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-3/REVLib-cpp-2025.0.0-beta-3-osxuniversal.zip",
        sha256 = "5a1e4647dece0651f0ccfff8aa7152d0f1a36b122aea1a4b2a531168d5db3c4d",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-3/REVLib-cpp-2025.0.0-beta-3-osxuniversalstatic.zip",
        sha256 = "722480ed5b8adbf15b421ccf910ddc58c11ea6eeb3fb45c873b96a477977c3a6",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-3/REVLib-driver-2025.0.0-beta-3-headers.zip",
        sha256 = "b4df5691e085a63a0936f82ec054a06ce8307713a41746470ee17e2a54c2fc3d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-3/REVLib-driver-2025.0.0-beta-3-windowsx86-64.zip",
        sha256 = "1306ccf2c27e3d2d487d9985aabd266fcc6f05a1b12e53b901597343617469ea",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-3/REVLib-driver-2025.0.0-beta-3-windowsx86-64static.zip",
        sha256 = "d276dd1a424e8d9eb5573000a2ae57dd78272adb76f7c67e224ea522388b90a4",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-3/REVLib-driver-2025.0.0-beta-3-linuxarm64.zip",
        sha256 = "6b729d3aa0d72706762b505c9f6b01aa60eb2394389cf1a4bc080be1caa48073",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-3/REVLib-driver-2025.0.0-beta-3-linuxarm64static.zip",
        sha256 = "bb11b4f0497e8b3799c2d294e1b22ff2bcf3df1592599023db9c4b92fe896047",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-3/REVLib-driver-2025.0.0-beta-3-linuxx86-64.zip",
        sha256 = "9b6f58cce0d98ce90e8936b079b57ace832ce34ce61784aceaf914fd60b32da3",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-3/REVLib-driver-2025.0.0-beta-3-linuxx86-64static.zip",
        sha256 = "e3ddf15647575db1e08d80a274653e757b9ee99756cebd45a2f072ba4bfdaabe",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-3/REVLib-driver-2025.0.0-beta-3-linuxathena.zip",
        sha256 = "a887fe7449320f01991406826032ea16e78febace8be5e88201fd6f7ed88d1f8",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-3/REVLib-driver-2025.0.0-beta-3-linuxathenastatic.zip",
        sha256 = "e327adcf3560a11c601a0b00d7a41e86316a07f27e648c616e3c81dd825df704",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-3/REVLib-driver-2025.0.0-beta-3-linuxarm32.zip",
        sha256 = "4bea1b99392c1a97cd29ae6c6422074ca867aceb2fc633ca67ab58a17fa38702",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-3/REVLib-driver-2025.0.0-beta-3-linuxarm32static.zip",
        sha256 = "5e114177bb623e321335a750b1bf80cf6762d728d7c02d35ff4336ff255c145e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-3/REVLib-driver-2025.0.0-beta-3-osxuniversal.zip",
        sha256 = "bf9e4137a7b3e70a1612a4b984a9ee14f53a4d7359ed9db14c382949974483ee",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-3/REVLib-driver-2025.0.0-beta-3-osxuniversalstatic.zip",
        sha256 = "fa7dbb0b9069bde11e10fe23870dfe594c92ba9afbb1972a58394c000ea84140",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
