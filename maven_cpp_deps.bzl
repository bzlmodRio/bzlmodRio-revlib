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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.1/REVLib-cpp-2025.0.1-headers.zip",
        sha256 = "4a42385d0de72459a03f043bb5ac5cd09ad4dba14991c0354cb0c4b9b2f52fde",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.1/REVLib-cpp-2025.0.1-windowsx86-64.zip",
        sha256 = "f48db0a91b35a7a0653b4d05e99ae39ce87f09f1baef88d6d50fc7e9f34a925e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.1/REVLib-cpp-2025.0.1-windowsx86-64static.zip",
        sha256 = "285389070887bcd3c9d1e5616a98e2e26e7adc5004f5e5650189499afd050822",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.1/REVLib-cpp-2025.0.1-linuxarm64.zip",
        sha256 = "4829a1110308390995903c27ca1a3980bd77c385b787d43e47171a8ba26763d3",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.1/REVLib-cpp-2025.0.1-linuxarm64static.zip",
        sha256 = "07a056ab001a35a85d34a808ca4921a83f5dc588ff59450dbb903becf288399f",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.1/REVLib-cpp-2025.0.1-linuxx86-64.zip",
        sha256 = "e4ba464ec7fe008d3a14da245bd0e2ac030bbd88d028bab7b8962c3f5e7411f1",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.1/REVLib-cpp-2025.0.1-linuxx86-64static.zip",
        sha256 = "fcb9dd20561d56b22c4559d149f99974cbce7f73e4a6819ddcfe1a4e65421eb0",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.1/REVLib-cpp-2025.0.1-linuxathena.zip",
        sha256 = "bc608ffeca7a586a3b02bfa116f02dbeaa6545101851bb23af037d140a12a332",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.1/REVLib-cpp-2025.0.1-linuxathenastatic.zip",
        sha256 = "050c1ba44e2db5e0316cf4f3a83ce9fefc815c6424bcca5e42f296a3760d2c2d",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.1/REVLib-cpp-2025.0.1-linuxarm32.zip",
        sha256 = "5f502108d07ec6d39e581f32073608e4643bea7c9714b7a3779a75f2aa07384a",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.1/REVLib-cpp-2025.0.1-linuxarm32static.zip",
        sha256 = "60d838aeb101808c8cfbeec9267ccc6cffbdb34c7e90c8f9486f23ee6d63b5ec",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.1/REVLib-cpp-2025.0.1-osxuniversal.zip",
        sha256 = "29f5cb796eed8b54aee23b343944a8656b5fb8a4334a9deed64cf6c22069098d",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.1/REVLib-cpp-2025.0.1-osxuniversalstatic.zip",
        sha256 = "6863770f4ff62b0a7cd151e15985075f1a1d6d9eed36b2f53f8753838bae703e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.1/REVLib-driver-2025.0.1-headers.zip",
        sha256 = "1bedd9b4b917a03afb8bbeecb7ecc2001c6cd6706651c3d1b34f2c7793d9c037",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.1/REVLib-driver-2025.0.1-windowsx86-64.zip",
        sha256 = "17fbcef3565e874c4a20faef6ec21cff5ad3e7a7e88871bf7abc97366aec70a5",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.1/REVLib-driver-2025.0.1-windowsx86-64static.zip",
        sha256 = "e009c7b3110f9c02e45cf0efd98ef22738b5a143d83e5945e9e083e1dc5cc45c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.1/REVLib-driver-2025.0.1-linuxarm64.zip",
        sha256 = "59d4ccd47f12a5aba5b3c5c6560fcc508452572439340870b556fa56698df80d",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.1/REVLib-driver-2025.0.1-linuxarm64static.zip",
        sha256 = "7046c0a24fc690b9609531489fbab0f969d9b39dde1ff85312c78fe655973026",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.1/REVLib-driver-2025.0.1-linuxx86-64.zip",
        sha256 = "b70cee1097ba2c850da6177735cc53016f361457afed316d5be5fe103fe9acf8",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.1/REVLib-driver-2025.0.1-linuxx86-64static.zip",
        sha256 = "2999066cb9b005777398a4bcaa7b95609a286d087d1ff7a72fa182713f7d9147",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.1/REVLib-driver-2025.0.1-linuxathena.zip",
        sha256 = "77cdaab09fa9ce65fb3c80dfc5363b4034bea0fa7b47dc37c8d27d535608192c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.1/REVLib-driver-2025.0.1-linuxathenastatic.zip",
        sha256 = "fd96e5895a4ae76ebc8211d3b9f4d7386499b546ae6fd1a12a0c89fffa521284",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.1/REVLib-driver-2025.0.1-linuxarm32.zip",
        sha256 = "cb948ffd01b1ff986a172eb0bf32ba5bce8f2e7e18e2c90ba504cc2754d48a19",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.1/REVLib-driver-2025.0.1-linuxarm32static.zip",
        sha256 = "7148fad18d5764d65b966edbf13e763e26cb73416e690b3ef0439017508e6ec3",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.1/REVLib-driver-2025.0.1-osxuniversal.zip",
        sha256 = "710f843ac5023af0dcf421b6fb3902ad3244ebb6c64b0a4897d2b7ff71cc99e2",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.1/REVLib-driver-2025.0.1-osxuniversalstatic.zip",
        sha256 = "f87f0be34d8a1ce7581f3d23c86a9cf964035da3c2854fe193a2d5769b28322e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
