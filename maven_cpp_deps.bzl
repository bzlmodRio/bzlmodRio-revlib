load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

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

def __setup_bzlmodrio_revlib_cpp_dependencies(mctx):
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.4/REVLib-cpp-2024.2.4-headers.zip",
        sha256 = "998a9bc7a50ab83a7f2f60852e9c6bea53f2deaf655c15ced00d81fde09fd454",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.4/REVLib-cpp-2024.2.4-windowsx86-64.zip",
        sha256 = "579a96a2c7f9626459ccb625dacfebe9b7df442cfb1f5e261d00dc4fcae0a230",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.4/REVLib-cpp-2024.2.4-windowsx86-64static.zip",
        sha256 = "d086ecdade7c74e6d10207588d17a9ebaa9d70f2274a3f29a33712f22d8208b1",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.4/REVLib-cpp-2024.2.4-linuxarm64.zip",
        sha256 = "b47358b11455f2bdbdf34ec7e6b89038d58f7ca492d80069e11ce8e3c3b7634b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.4/REVLib-cpp-2024.2.4-linuxarm64static.zip",
        sha256 = "c2eefc8db39ec0d19e4b46d7171d701ce4dd45ed0c34c5628fde89a70380adc0",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.4/REVLib-cpp-2024.2.4-linuxx86-64.zip",
        sha256 = "0027a6843f0dbed50e951b91b00362dfd0640e5956b9830ab1c5cd5494dc3d29",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.4/REVLib-cpp-2024.2.4-linuxx86-64static.zip",
        sha256 = "839d20b3dcdb5027ae1389b4ab6aa6efe2a92aafe314f217a545db3fe6a07198",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.4/REVLib-cpp-2024.2.4-linuxathena.zip",
        sha256 = "5053b52597ecb5f55d1b6cba28819568f21a83486e6050655905ab9e8f49d876",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.4/REVLib-cpp-2024.2.4-linuxathenastatic.zip",
        sha256 = "0a8b661d4b222c894dc80bab3b7d003c8e8e3782299a9f37a29f2da65ec43819",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.4/REVLib-cpp-2024.2.4-linuxarm32.zip",
        sha256 = "d675ca90c1cb95843cf48d547d40ec6259c64d02439e804a4617660f8ef91742",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.4/REVLib-cpp-2024.2.4-linuxarm32static.zip",
        sha256 = "558652f6baff4ffc14931aaf274fd4a0575dc5c6b16012a58582b5c2bf726b6f",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.4/REVLib-cpp-2024.2.4-osxuniversal.zip",
        sha256 = "7fdea33f8ca4ab31def6dd8a5a008ba17adaa6c2540319a567fba138be26deb2",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.4/REVLib-cpp-2024.2.4-osxuniversalstatic.zip",
        sha256 = "2679651b841178744ebc67787a63fd1314ad26c5e17b50e53df8a519511e7813",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.4/REVLib-driver-2024.2.4-headers.zip",
        sha256 = "bbc4ff95f84530f86aaa46817ba20a247dbf075ace36dfee60e226f5a2c535a8",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.4/REVLib-driver-2024.2.4-windowsx86-64.zip",
        sha256 = "1a22e9ad396c0c3ddbff469763075cb9e9bdc7e0843f7c47c40b1a4047445b7d",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.4/REVLib-driver-2024.2.4-windowsx86-64static.zip",
        sha256 = "61891c809288cad9d726ffa5e6a3c3c50111ea2714e7d9f5a0d94e2a6d459675",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.4/REVLib-driver-2024.2.4-linuxarm64.zip",
        sha256 = "70d6c9c029a0fcd32b978affaea242304ceb2b3f637cada9d87871b62137de47",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.4/REVLib-driver-2024.2.4-linuxarm64static.zip",
        sha256 = "1b380da92a9a167d4c799b5e77ab62680f80d31d419d64920dac74fc14ea07e6",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.4/REVLib-driver-2024.2.4-linuxx86-64.zip",
        sha256 = "d0770226787dc4c6dc979194190b6bd29aae8f1e657cd4e202958e400aa19ed8",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.4/REVLib-driver-2024.2.4-linuxx86-64static.zip",
        sha256 = "dee862b0eb742f82175fac5790fe0052f0c5d92adc544692b28830da6c47bf52",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.4/REVLib-driver-2024.2.4-linuxathena.zip",
        sha256 = "5cb4d83b53f4fa9d71a9e753f6b8aeb3722f82ed4c4d7d3b1b4cc2b1a4f1a29d",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.4/REVLib-driver-2024.2.4-linuxathenastatic.zip",
        sha256 = "02269c2f81c32e085f00e9cfa07d71097943d7e5c44fb5825a4d46ad580f4bd1",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.4/REVLib-driver-2024.2.4-linuxarm32.zip",
        sha256 = "819d5ac2474047bc0bd1fd87f5d88cda57e48bce414e98ca75a357ca6eaca749",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.4/REVLib-driver-2024.2.4-linuxarm32static.zip",
        sha256 = "9a9091e003418f3faf0c4ad452ab78b4d51a1d51baed120fab6e49b3593018ef",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.4/REVLib-driver-2024.2.4-osxuniversal.zip",
        sha256 = "e2b6df86ebf04051591457074776815591d7d8ccb755bfcd05d99a275c4fd799",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.4/REVLib-driver-2024.2.4-osxuniversalstatic.zip",
        sha256 = "5e42a5f597bd855c273311d2bd97342d0610345862b0573193fdf1450dcdbdba",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
