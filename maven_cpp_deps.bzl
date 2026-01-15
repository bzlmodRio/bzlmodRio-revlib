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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.1/REVLib-cpp-2026.0.1-headers.zip",
        sha256 = "6cbc25597566b3b9134fd96967b1d3368ebe1eefb9eea624ae3e3bc1525edea2",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.1/REVLib-cpp-2026.0.1-windowsx86-64.zip",
        sha256 = "6eab96fb2be7fb0969ee1f2356db7e2d21f530bf64ea3e4ebc622c3b99fb4b64",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.1/REVLib-cpp-2026.0.1-windowsx86-64static.zip",
        sha256 = "db57f3c90b0a85cd3bd996f7ac0b94750af173fc58d42449cfd3059c1919b8ad",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.1/REVLib-cpp-2026.0.1-linuxarm64.zip",
        sha256 = "161ccfd09c4100c88a4d64fb84571527dcbbb6ccf8f2ae77f87fa8b7ff1084e6",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.1/REVLib-cpp-2026.0.1-linuxarm64static.zip",
        sha256 = "183865d000eecc3ba15f2b153aa4087494ec79125078d7ca6d8dbe64d4d1c772",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.1/REVLib-cpp-2026.0.1-linuxx86-64.zip",
        sha256 = "cb0b034aef81d4daa3d9f31ed2c8ca7799d960bd3d9e37d2a091519cbaf5f58c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.1/REVLib-cpp-2026.0.1-linuxx86-64static.zip",
        sha256 = "58868cdbb4d4e60ac9d7f4c773df5fa3d4b5cf8fda388d19e8358501f3bd6ae7",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.1/REVLib-cpp-2026.0.1-linuxathena.zip",
        sha256 = "4c3b6b908f94250ddf48e6bcd4d3eabf7264d469c6d35d5c62ad051bfe94c9ba",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.1/REVLib-cpp-2026.0.1-linuxathenastatic.zip",
        sha256 = "7461a8071cfcfd48d95a4dba4a8741a22f26da04d86eb720aa98dd6d7692c441",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.1/REVLib-cpp-2026.0.1-linuxarm32.zip",
        sha256 = "7dcfb61d1003631dabb32cb30b674c294bcf99b66f44878a652b1f5ef700bf08",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.1/REVLib-cpp-2026.0.1-linuxarm32static.zip",
        sha256 = "6e3fb67f284141e07ef0637b366616528a426d1d9c13f71bc421cb57b2d0a229",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.1/REVLib-cpp-2026.0.1-osxuniversal.zip",
        sha256 = "a0a0290920d47fd0b3a69b6c14e8fc8c535f8057f5d23d6e02979f5a0b13c95c",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.1/REVLib-cpp-2026.0.1-osxuniversalstatic.zip",
        sha256 = "35e31693bfadd6ce837ec4e23d4f27fce27b874865ce5a0ff818782b5b78fc45",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.1/REVLib-driver-2026.0.1-headers.zip",
        sha256 = "1babb42b0619af40a6cda10562c6e6a616705b0d4ac48bae9e5f881316982366",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.1/REVLib-driver-2026.0.1-windowsx86-64.zip",
        sha256 = "5ab4bc9992fc27e4076eff758a5faa26e64090522886701e02214f50f35f0521",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.1/REVLib-driver-2026.0.1-windowsx86-64static.zip",
        sha256 = "ddef935eef6ce739d70ad4b5b94c3b7cb5a712b0b26d47fcd1dc8105ac2c0c52",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.1/REVLib-driver-2026.0.1-linuxarm64.zip",
        sha256 = "39f6cda8f377c32d21c079289838c58001d25ccb13ae0ce2b71abe067801d06c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.1/REVLib-driver-2026.0.1-linuxarm64static.zip",
        sha256 = "2855ec5ed47082b3f7a9c30e3a5438cbb80189261cb5839f894b4176b00885a2",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.1/REVLib-driver-2026.0.1-linuxx86-64.zip",
        sha256 = "a35c9626fa4a1db108c254c64838649377569f129bc1811bd55d2a16b1b866f5",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.1/REVLib-driver-2026.0.1-linuxx86-64static.zip",
        sha256 = "608174f4cb348014b2171613e9f3605494586ec86b20e7bdf23ceaa82dca60fd",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.1/REVLib-driver-2026.0.1-linuxathena.zip",
        sha256 = "a74e4e4c4ef483f8a5a7c96455015d36f274a251c141c1726ec0a72efa8926a2",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.1/REVLib-driver-2026.0.1-linuxathenastatic.zip",
        sha256 = "5d00c8d7e650c2aad156284e4771fe9b7bacc3bf1d2a1017303286ce0aac7800",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.1/REVLib-driver-2026.0.1-linuxarm32.zip",
        sha256 = "d5d8338162f1bf048905de6d724e01e002c8f2d43e22f61578eab2d4c524094b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.1/REVLib-driver-2026.0.1-linuxarm32static.zip",
        sha256 = "fa6674f7993b830dc85a5bbf8072fff2a1d798137c2581ee8a6dae7e629673d3",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.1/REVLib-driver-2026.0.1-osxuniversal.zip",
        sha256 = "75e88da9a4d9444b6b92cb21f5da86374bc09d5bca9d0cf1651461fb2d6a43ee",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.1/REVLib-driver-2026.0.1-osxuniversalstatic.zip",
        sha256 = "d764e557a2fd5345758ba3772315ab8a1f9d945a3f61dabc7fdd7b949ea3e238",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.1/RevLibBackendDriver-2026.0.1-windowsx86-64.zip",
        sha256 = "ae50121b29aaed3119d611772a8cc87d7992e5ffb6d9d3e21e7db205d003a23f",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.1/RevLibBackendDriver-2026.0.1-windowsx86-64static.zip",
        sha256 = "cea2953e02e9971e02a354c8985b6c21e7d20e209e9d3fec4b48e9a02210876d",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.1/RevLibBackendDriver-2026.0.1-linuxarm64.zip",
        sha256 = "b49ddf3144e2ce4b46d16dfd5d9af3ed81b990a210ce3dc3ecfda50fde449ccc",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.1/RevLibBackendDriver-2026.0.1-linuxarm64static.zip",
        sha256 = "ff78c06f7bf81dfa364f4ca4b466e779882c5f57f74f05c4b5c1cb6c864baad4",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.1/RevLibBackendDriver-2026.0.1-linuxx86-64.zip",
        sha256 = "0b9ca3294dd4ea970fbfcdfc888afc20521d1c777263c3351570c4ea7bcf50cf",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.1/RevLibBackendDriver-2026.0.1-linuxx86-64static.zip",
        sha256 = "23d07c068c79fdb2a0008fbe7b5ccc7285b6a5d0a3d0ebf0ee95fe6f20a045fc",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.1/RevLibBackendDriver-2026.0.1-linuxathena.zip",
        sha256 = "b605d579d8f5e744e8e80391660c282eac87c3ebd8e8217300229fcc35b0fa6b",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.1/RevLibBackendDriver-2026.0.1-linuxathenastatic.zip",
        sha256 = "91d8181e22f3c9f0313029d4f9029fd80af678f81a876cd7b06b47fb31256a37",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.1/RevLibBackendDriver-2026.0.1-linuxarm32.zip",
        sha256 = "46189f7b1d3ff82c5bdc1478837f32ba68e2c9696c6b42efda814d67390f55f9",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.1/RevLibBackendDriver-2026.0.1-linuxarm32static.zip",
        sha256 = "c761254be3fc409ae33d4f935e8baf357742315fd09b4e1e15c5b3f01330f9c2",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.1/RevLibBackendDriver-2026.0.1-osxuniversal.zip",
        sha256 = "58a099c47406803eb23f47267aa6cff5cbd0479a4bf8cf8e6c04d3988ce3e116",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libBackendDriver.dylib osx/universal/shared/libBackendDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.1/RevLibBackendDriver-2026.0.1-osxuniversalstatic.zip",
        sha256 = "a27c89d676b5168e77e189c0bf9f334c0c5d346bf9bb8de2b0ec6c608191b7bd",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.1/RevLibWpiBackendDriver-2026.0.1-windowsx86-64.zip",
        sha256 = "feda86609d2ba2560051a173c2d7c5b521ae566120c13d9f68ed3904d408c12a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.1/RevLibWpiBackendDriver-2026.0.1-windowsx86-64static.zip",
        sha256 = "83a8a63e0706eb67257ddf0d7989aae3e08d920dbe184d682a2f37eea7a0ddf4",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.1/RevLibWpiBackendDriver-2026.0.1-linuxarm64.zip",
        sha256 = "fa49c4fce45ce3371fc52b80e5ce9a75a78b5619a84cff79cd05390eb0974c4a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.1/RevLibWpiBackendDriver-2026.0.1-linuxarm64static.zip",
        sha256 = "d307b516212184bab017c253c68b5f6e34d7e1f5863420ac5d4f9415be8a0384",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.1/RevLibWpiBackendDriver-2026.0.1-linuxx86-64.zip",
        sha256 = "96f3962d18cae98e6f01130e101129836a2a3601dde93ecfeb4aff85a07be546",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.1/RevLibWpiBackendDriver-2026.0.1-linuxx86-64static.zip",
        sha256 = "ebfa8f7fb7d564c5cbe14657e00d566c30deb6fb8ca1362dfb0dc01b3452b175",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.1/RevLibWpiBackendDriver-2026.0.1-linuxathena.zip",
        sha256 = "a7a421de9fa28c5abcb8b8c407b44dd1749161a3133e13edd1def53d6af13c76",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.1/RevLibWpiBackendDriver-2026.0.1-linuxathenastatic.zip",
        sha256 = "f8c05d9c78be914ce816eac0c43ff582063b07fbfd397fde6cf81d17b8e363e0",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.1/RevLibWpiBackendDriver-2026.0.1-linuxarm32.zip",
        sha256 = "df8a1781554aff21f4f3f920398575e3e2ef600d4fad9df3a9783b1d030fdcb9",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.1/RevLibWpiBackendDriver-2026.0.1-linuxarm32static.zip",
        sha256 = "0e862a4305fb674bb6efc47810b2c5fb32af3c993647e0d12db3de96c945b78b",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.1/RevLibWpiBackendDriver-2026.0.1-osxuniversal.zip",
        sha256 = "7977ff7458ab71688cb52a7924a89b6f6dd438f408b9860d5662b15db661f31a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLibWpi.dylib osx/universal/shared/libREVLibWpi.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.1/RevLibWpiBackendDriver-2026.0.1-osxuniversalstatic.zip",
        sha256 = "fe20a21d17559379262c7c7b974f82791c55eef21da2db2608e041fca9be0742",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
