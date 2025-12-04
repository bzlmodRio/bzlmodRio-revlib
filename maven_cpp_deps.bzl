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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0-beta-1/REVLib-cpp-2026.0.0-beta-1-headers.zip",
        sha256 = "43dd5cfd53a5431b34df1c38daf5369ef23fc6c5771586ccdbd617aaa7cdceda",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0-beta-1/REVLib-cpp-2026.0.0-beta-1-windowsx86-64.zip",
        sha256 = "634e888b67e112ba5fa6b2668bae5421410bddfffc8dde0967abd3e4ac077314",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0-beta-1/REVLib-cpp-2026.0.0-beta-1-windowsx86-64static.zip",
        sha256 = "7e9599b39ca88ab1f6a8ef603df660238c9304b01630cc7f3e09762b7a175f25",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0-beta-1/REVLib-cpp-2026.0.0-beta-1-linuxarm64.zip",
        sha256 = "28d8bd052eba29af3b8eea75579e46ceb3960dc8027762d68da1f12c6568ce8e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0-beta-1/REVLib-cpp-2026.0.0-beta-1-linuxarm64static.zip",
        sha256 = "bb5452d3e1effb7d67c8c0fb36499e89c745445f0daf24c3e482dbd722fd6071",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0-beta-1/REVLib-cpp-2026.0.0-beta-1-linuxx86-64.zip",
        sha256 = "d39b5fea62cdec6473a07068842fa6243326c1ac7afa5b12577e168659f790b3",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0-beta-1/REVLib-cpp-2026.0.0-beta-1-linuxx86-64static.zip",
        sha256 = "874d3f797044f03b4444e04e6bffdabcf60bc946547ca767c6764785fad98581",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0-beta-1/REVLib-cpp-2026.0.0-beta-1-linuxathena.zip",
        sha256 = "bfd5dc6860df068169bf3e92c7ee1b29aa030f5d10e9e74d8b2ca1d7f783d953",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0-beta-1/REVLib-cpp-2026.0.0-beta-1-linuxathenastatic.zip",
        sha256 = "ea68ec84f55ca6efb62628ec43b8cc539bae3095506ce20084db21d1cd25d866",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0-beta-1/REVLib-cpp-2026.0.0-beta-1-linuxarm32.zip",
        sha256 = "3ffc7adcf36d4777ead7347ed25f85252454513c57a6412090615aa297554156",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0-beta-1/REVLib-cpp-2026.0.0-beta-1-linuxarm32static.zip",
        sha256 = "3762c810af968220bcb8a5c180de7eeeb0f1656ef23b82eaa0b7781eaa28e009",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0-beta-1/REVLib-cpp-2026.0.0-beta-1-osxuniversal.zip",
        sha256 = "2ae388313bdb448ee565da105ab4643e98e7817e27e117380073adfbd2c5fd8e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLib.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libBackendDriver.dylib @rpath/libBackendDriver.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libREVLibDriver.dylib @rpath/libREVLibDriver.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libREVLibWpi.dylib @rpath/libREVLibWpi.dylib osx/universal/shared/libREVLib.dylib",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0-beta-1/REVLib-cpp-2026.0.0-beta-1-osxuniversalstatic.zip",
        sha256 = "baae9ecf264eb1b0e6e9343b2770d77ac3ce02d9203d24d4406623cde8dca6a3",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0-beta-1/REVLib-driver-2026.0.0-beta-1-headers.zip",
        sha256 = "04ceda8e444dcfa3d6b3c2be1426b9f79828e08a154553ab11a9755379c928d0",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0-beta-1/REVLib-driver-2026.0.0-beta-1-windowsx86-64.zip",
        sha256 = "5b5d65a8009731911abd8126a953d9671a8737dbc111b3cade081465d22ec767",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0-beta-1/REVLib-driver-2026.0.0-beta-1-windowsx86-64static.zip",
        sha256 = "02d070126543a9ae24dcfa8825a8f9dc378f483ece3390d40981aee7b96eef10",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0-beta-1/REVLib-driver-2026.0.0-beta-1-linuxarm64.zip",
        sha256 = "ac664958ef05ac15b66fda9f132e7cdd172e2b10370caecb915112c5cc193ef3",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0-beta-1/REVLib-driver-2026.0.0-beta-1-linuxarm64static.zip",
        sha256 = "c564ef21d8b456dd26be03afc1549eda3424826bd7e1f4ebdef216dab1ff2927",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0-beta-1/REVLib-driver-2026.0.0-beta-1-linuxx86-64.zip",
        sha256 = "a6c490221540aee635686c6b1a195a604054b42a4dcfddbd38b32f21d65083c0",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0-beta-1/REVLib-driver-2026.0.0-beta-1-linuxx86-64static.zip",
        sha256 = "a554749e0f6ae9802e195a4681ad5e4639fb35be99f87807432895d4d94bdf69",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0-beta-1/REVLib-driver-2026.0.0-beta-1-linuxathena.zip",
        sha256 = "2ee91244d61521f518c7211c9f2543623f0784eefe8467c702859fb98a4ff5f8",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0-beta-1/REVLib-driver-2026.0.0-beta-1-linuxathenastatic.zip",
        sha256 = "94745dcc8fd551a974da866134c6fbb43cfd8f1af37d6e9362067655095e3226",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0-beta-1/REVLib-driver-2026.0.0-beta-1-linuxarm32.zip",
        sha256 = "eb84a88106ccb3abec86ae481b636bbcf31e8232942dde0db00076fc0c0f0855",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0-beta-1/REVLib-driver-2026.0.0-beta-1-linuxarm32static.zip",
        sha256 = "766a7bd0ba71a3f0c4447d4cd40941100dd9620eb388f3ae3ef52d42d1374d92",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0-beta-1/REVLib-driver-2026.0.0-beta-1-osxuniversal.zip",
        sha256 = "b9dcddc9b31f5fd77a77dd7bb424fc2ed0c69723c9e183e8d8e9af9de9126822",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLibDriver.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libBackendDriver.dylib @rpath/libBackendDriver.dylib osx/universal/shared/libREVLibDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0-beta-1/REVLib-driver-2026.0.0-beta-1-osxuniversalstatic.zip",
        sha256 = "64c2cb98273b6ca3358b0b539bfafd1a65c426234e585ff013dc046f1f23c07c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0-beta-1/RevLibBackendDriver-2026.0.0-beta-1-windowsx86-64.zip",
        sha256 = "8e6bb7b72079e7e719784cd87851ec03aef543c4e8d9a94e2fe5d645d4ecc223",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0-beta-1/RevLibBackendDriver-2026.0.0-beta-1-windowsx86-64static.zip",
        sha256 = "24bcb9151510769f5a324ea5e17581bff4d0bf1197f6adf41659e28e53ac7bb2",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0-beta-1/RevLibBackendDriver-2026.0.0-beta-1-linuxarm64.zip",
        sha256 = "5e10cf8431a1c62953d94fe0b593cec02e9b2cebfe2dd2ea8f7be27b483b0a66",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0-beta-1/RevLibBackendDriver-2026.0.0-beta-1-linuxarm64static.zip",
        sha256 = "8f30842453f93dcf7cde5cc0bf79cfdb1fabb0dd9d763fc3a70312c04ca52430",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0-beta-1/RevLibBackendDriver-2026.0.0-beta-1-linuxx86-64.zip",
        sha256 = "78e71d90bf5ba68b09c45e35e8e1fd87903ba871b0f644d7311f2113bee13930",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0-beta-1/RevLibBackendDriver-2026.0.0-beta-1-linuxx86-64static.zip",
        sha256 = "c2eabeae00f7905096b8ebd1358508b66a2c11809209e394fccbbe9cde997eca",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0-beta-1/RevLibBackendDriver-2026.0.0-beta-1-linuxathena.zip",
        sha256 = "acda10fe5a0bbe873059d5049551c252ef435a38237cad271e6df3372263604a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0-beta-1/RevLibBackendDriver-2026.0.0-beta-1-linuxathenastatic.zip",
        sha256 = "a810cec7f261f31c94a1286776f290e5be5d6185f2058f47059058a41c670e68",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0-beta-1/RevLibBackendDriver-2026.0.0-beta-1-linuxarm32.zip",
        sha256 = "e47f590923191e914b8c6f0ede46273c6ce7dd987704762e9599bd81bd878b28",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0-beta-1/RevLibBackendDriver-2026.0.0-beta-1-linuxarm32static.zip",
        sha256 = "a1d0b4d1cbbefbf8bb8ecbb95506c6e8a93d96b229e8c5df8ea5ec64e672ad71",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0-beta-1/RevLibBackendDriver-2026.0.0-beta-1-osxuniversal.zip",
        sha256 = "bc99102a200c9ff399dcd984079283beca01a0a6ab22e1d70c0ab3a786e0c02a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libBackendDriver.dylib osx/universal/shared/libBackendDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0-beta-1/RevLibBackendDriver-2026.0.0-beta-1-osxuniversalstatic.zip",
        sha256 = "ed681e7918fd3f8ba5819f529a04b9ebb81060307b3f6ba48a54ae2c69e6d450",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0-beta-1/RevLibWpiBackendDriver-2026.0.0-beta-1-windowsx86-64.zip",
        sha256 = "0204127e251d840872facdb27802e3b26079f458f85b27901b34b9686b7bbdfe",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0-beta-1/RevLibWpiBackendDriver-2026.0.0-beta-1-windowsx86-64static.zip",
        sha256 = "d1b032a73804562a578a1b5c5f382176e36ee40069fa4133bac34592d869bd50",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0-beta-1/RevLibWpiBackendDriver-2026.0.0-beta-1-linuxarm64.zip",
        sha256 = "f0a7bbe1d0c9c0d7d0d97bf88f111729557e4bad050e222bd5fe44cb739b1aec",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0-beta-1/RevLibWpiBackendDriver-2026.0.0-beta-1-linuxarm64static.zip",
        sha256 = "046a81ca55c295e6cfe2432782e7853ed99d7f13924f8c297cfb64fbedcb9218",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0-beta-1/RevLibWpiBackendDriver-2026.0.0-beta-1-linuxx86-64.zip",
        sha256 = "d4858b7eb884f434aacff20c9315419429312edd4a1c30b92bb2b62c7d09a0d1",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0-beta-1/RevLibWpiBackendDriver-2026.0.0-beta-1-linuxx86-64static.zip",
        sha256 = "b99f75d3e23c1d044ea441d3de214e2c64ab384d37dde7ea1e19d398cd5933a9",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0-beta-1/RevLibWpiBackendDriver-2026.0.0-beta-1-linuxathena.zip",
        sha256 = "d93ab5161cd820d4e076618b63d4eda255548b95965e87aa31ac82487a87c580",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0-beta-1/RevLibWpiBackendDriver-2026.0.0-beta-1-linuxathenastatic.zip",
        sha256 = "f9acf4c4856fe0b3ce18bce2f65eb1860ed825a67a4f409ffbc78e619a35dfc3",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0-beta-1/RevLibWpiBackendDriver-2026.0.0-beta-1-linuxarm32.zip",
        sha256 = "314a5d2c06d0bb8355305e3c4c1bf9fe8219f4ed373291e085ce7969758933a0",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0-beta-1/RevLibWpiBackendDriver-2026.0.0-beta-1-linuxarm32static.zip",
        sha256 = "b33ed91c9857497e0bc7f587c1fbe5a0c89cc94323a21d38da706240583aee3d",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0-beta-1/RevLibWpiBackendDriver-2026.0.0-beta-1-osxuniversal.zip",
        sha256 = "ac86dfe4b6357246aea2a4a5e1fe9efd8870238fee73538dead039ef2909cfe7",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLibWpi.dylib osx/universal/shared/libREVLibWpi.dylib",
            "install_name_tool -change libwpiHal.dylib @rpath/libwpiHal.dylib osx/universal/shared/libREVLibWpi.dylib",
            "install_name_tool -change libwpiutil.dylib @rpath/libwpiutil.dylib osx/universal/shared/libREVLibWpi.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0-beta-1/RevLibWpiBackendDriver-2026.0.0-beta-1-osxuniversalstatic.zip",
        sha256 = "bfaeaec984574af07591df8069799a2e848f6392e038b8d1b683c197a001d1af",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
