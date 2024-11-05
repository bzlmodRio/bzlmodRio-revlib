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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-1/REVLib-cpp-2025.0.0-beta-1-headers.zip",
        sha256 = "2f2f99248f149485768aa748a77a19130fe17be2f6b8f0fa0653059f44771622",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-1/REVLib-cpp-2025.0.0-beta-1-windowsx86-64.zip",
        sha256 = "c10927c4dae16bfee1f0b037909a9bc14b5cc17d79e3bbb0c92ea885315278b5",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-1/REVLib-cpp-2025.0.0-beta-1-windowsx86-64static.zip",
        sha256 = "92cc9835ae0c88e343fe61e52f133ad770aff9254aa86e0cbc4ebead3226d9e9",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-1/REVLib-cpp-2025.0.0-beta-1-linuxarm64.zip",
        sha256 = "f002a262f2ddb1306ec05156506eb001766a22ca6b54b16a1f5ce628ca52cb0a",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-1/REVLib-cpp-2025.0.0-beta-1-linuxarm64static.zip",
        sha256 = "009e7635c054630cdd7076d947d8774e4f30a4c565b9dc686b4e76e682f53289",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-1/REVLib-cpp-2025.0.0-beta-1-linuxx86-64.zip",
        sha256 = "2e67ec5953da5925146a569a586dfad721d719bf03572f2ede84750c1ce85638",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-1/REVLib-cpp-2025.0.0-beta-1-linuxx86-64static.zip",
        sha256 = "623053aaf9574fb88b414ca1ef4ef1b2fc59f3efed13bacb05e8d9d47d9e4de8",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-1/REVLib-cpp-2025.0.0-beta-1-linuxathena.zip",
        sha256 = "022064447c9ad3003b2fff37b0d12e8aec21ebd27fec28e1c33850d6f6a630da",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-1/REVLib-cpp-2025.0.0-beta-1-linuxathenastatic.zip",
        sha256 = "b871c6c53c78fbb23d4a32b67557b5fb05b69eedc329f20a53784a3ddb29a1ea",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-1/REVLib-cpp-2025.0.0-beta-1-linuxarm32.zip",
        sha256 = "db0f6220856ba49863d7fb3fc87942bfda2d8abdf5623d0a249ad8f0ed7b9270",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-1/REVLib-cpp-2025.0.0-beta-1-linuxarm32static.zip",
        sha256 = "20a6c393839c62491b55c486bf1033b897765cacfaf4dfb3bd05e5ed610ace9c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-1/REVLib-cpp-2025.0.0-beta-1-osxuniversal.zip",
        sha256 = "547dfcfec4cc5c1a66a49f884796ffea7891cb7d0fcf6b98b1cfd5d051d2cb86",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0-beta-1/REVLib-cpp-2025.0.0-beta-1-osxuniversalstatic.zip",
        sha256 = "e5029dda85e6727a9a6a3f423a16369483c8947eb84d7f7ffd2c179aa54d5731",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-1/REVLib-driver-2025.0.0-beta-1-headers.zip",
        sha256 = "1a7fdc7136f920f5f3f65d18c1e45d7881f770c6e2136e9db106d2c5c37e57f3",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-1/REVLib-driver-2025.0.0-beta-1-windowsx86-64.zip",
        sha256 = "37cc25ba40bb9cb5be443dc9f5db578f417a2a1b6d0c8075eaa070a6b63385a2",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-1/REVLib-driver-2025.0.0-beta-1-windowsx86-64static.zip",
        sha256 = "7cb562c7003397283640080cf0fd94dc702fc06ffcc2f2bf309add95bf4d1850",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-1/REVLib-driver-2025.0.0-beta-1-linuxarm64.zip",
        sha256 = "8400fe4b7df117692ca81305bb4965bbf18693720de3d5d4efe2134d3a5b14e3",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-1/REVLib-driver-2025.0.0-beta-1-linuxarm64static.zip",
        sha256 = "19c5d716da3f6cbc4335452fa09b076a1804c0ff4afe16095582f223b203a97e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-1/REVLib-driver-2025.0.0-beta-1-linuxx86-64.zip",
        sha256 = "2b1915a9868da07e909827252d23b7cff77c26c3b4dfddf49611db38d3eeea01",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-1/REVLib-driver-2025.0.0-beta-1-linuxx86-64static.zip",
        sha256 = "1a9ca890e50e55729bc719190bf601d502d049f28d5270d6f4006f7fffadded9",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-1/REVLib-driver-2025.0.0-beta-1-linuxathena.zip",
        sha256 = "6236c90e7e39b36b5a8754e6b11224f685f3ba69bbae7cf3a0cd7fe13575aa75",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-1/REVLib-driver-2025.0.0-beta-1-linuxathenastatic.zip",
        sha256 = "1fb0cffe5ddaebd1b7bdce0685abb94b3f02876d44ec79b7dc825f2a730e5a98",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-1/REVLib-driver-2025.0.0-beta-1-linuxarm32.zip",
        sha256 = "fa11d0af1f393fd89fed886a6733d80849e95df31609f9af1b79ad14bdb803a2",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-1/REVLib-driver-2025.0.0-beta-1-linuxarm32static.zip",
        sha256 = "dd445f0dc6035a375118884b81a1a4d81576f91f3ab2b56eac29fd4bf5bc34f5",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-1/REVLib-driver-2025.0.0-beta-1-osxuniversal.zip",
        sha256 = "dc16ba4f22b6daff909c2cf149323542e2520725799248f2e6dd443ff5916a74",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0-beta-1/REVLib-driver-2025.0.0-beta-1-osxuniversalstatic.zip",
        sha256 = "7eda7496531c9ea269081dc0ccd6df2c290a174b1d90530755be3144af6aec50",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
