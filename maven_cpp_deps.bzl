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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.4/REVLib-cpp-2026.0.4-headers.zip",
        sha256 = "67f8ca22d6d6c586d67b5b3673654d57800514766dc301541c9eb8c803132b4b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.4/REVLib-cpp-2026.0.4-windowsx86-64.zip",
        sha256 = "326c3e38bab9e564615a2735e4ef9cbb0db81ee56aca5071b8c9488f8af070a9",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.4/REVLib-cpp-2026.0.4-windowsx86-64static.zip",
        sha256 = "58bec1578d1bc716331c2b4f4cc37361a3a06f68a3adf3c65b3f54f7ced93c73",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.4/REVLib-cpp-2026.0.4-linuxarm64.zip",
        sha256 = "41015821d072d50085816d259f5db0ae6e5adb817496a6396577af6a98de5b81",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.4/REVLib-cpp-2026.0.4-linuxarm64static.zip",
        sha256 = "0e2b9f35b659473afcaaf6d0bbb604d5378960ec35b5ed00d0fad80e72d431bc",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.4/REVLib-cpp-2026.0.4-linuxx86-64.zip",
        sha256 = "a77c2b8bbc0f83cfea3f31fb9c6298c43235644e450ba38a44e80d968db449ad",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.4/REVLib-cpp-2026.0.4-linuxx86-64static.zip",
        sha256 = "2192e22bbaf37b534772efa2c9fa4338ad436749ee55ec4ad91b4ab8e7cfd5b0",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.4/REVLib-cpp-2026.0.4-linuxathena.zip",
        sha256 = "0d54961884069399a0bafcbe81d32c814713228f79d2c067f0fcefede6d28938",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.4/REVLib-cpp-2026.0.4-linuxathenastatic.zip",
        sha256 = "5367f1d0c72c4f7b6b579e54239421f4a915c1a90e08f149fe3d191a3e968ee3",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.4/REVLib-cpp-2026.0.4-linuxarm32.zip",
        sha256 = "88879b8a5137f4578a19e19804617528bdda945159dafcda07b19bbf4c729a3e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.4/REVLib-cpp-2026.0.4-linuxarm32static.zip",
        sha256 = "5738289190e7a63acfa1a52c2ba7f476b66ae6cfe6834d6c59ac692671faf790",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.4/REVLib-cpp-2026.0.4-osxuniversal.zip",
        sha256 = "22c6719f6eb9940079b86c8a68b7eaa191dc21cb77f91159f75e4f84211450f9",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.4/REVLib-cpp-2026.0.4-osxuniversalstatic.zip",
        sha256 = "a96ea914fb29ed505e0f9938d4b94c6002073448b55f8fcff53222156e61ed22",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.4/REVLib-driver-2026.0.4-headers.zip",
        sha256 = "cb9d60deec4af268f55d1e3460aaf579a251bb31392207b1c7efc46a41b48b32",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.4/REVLib-driver-2026.0.4-windowsx86-64.zip",
        sha256 = "ffb153c9c7ffd8c40014b46e0fe04846826b7245dfb0f808d9a2069a88722696",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.4/REVLib-driver-2026.0.4-windowsx86-64static.zip",
        sha256 = "320d295b21d3181ae98a53844258f05d366f53de9446b5fbc603b734d84c2425",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.4/REVLib-driver-2026.0.4-linuxarm64.zip",
        sha256 = "70b67beb8e6446a9520e3796f044d188d5459a343bf631aa4ab7b9dbe7aa0c1f",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.4/REVLib-driver-2026.0.4-linuxarm64static.zip",
        sha256 = "74224538b63e3e19e60b505b01c743dccd4aa85ed85fc18fdec9cf369ddcb0f8",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.4/REVLib-driver-2026.0.4-linuxx86-64.zip",
        sha256 = "af669248db1f6cb3187bd1641ec2a79d421839db0ce8742fefce1de5b01218e4",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.4/REVLib-driver-2026.0.4-linuxx86-64static.zip",
        sha256 = "8983f1becad6e899b09189b14743d9cd245b5aa9598b9f06a6be5d48c455d608",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.4/REVLib-driver-2026.0.4-linuxathena.zip",
        sha256 = "19fdf4ab939b7042e7ed973e20e50068a7bd6b646809f6502ca5a0c4236368d6",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.4/REVLib-driver-2026.0.4-linuxathenastatic.zip",
        sha256 = "6f771f4cde6fda52254bc50ab2f045eeaa5cf387fe8509570745ca4f7139b323",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.4/REVLib-driver-2026.0.4-linuxarm32.zip",
        sha256 = "f002a0f5504f795af07a19159c2812f765fae9490b717f04e8d8b8d06d531db2",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.4/REVLib-driver-2026.0.4-linuxarm32static.zip",
        sha256 = "5c6736fc9a6d76c6fa6444443203a0bb5d7596cae07c7bd179304f077ab68191",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.4/REVLib-driver-2026.0.4-osxuniversal.zip",
        sha256 = "6073cba958a9dfffc9318b08fcbf66fac55d2ce2b0a8a3baccb29bd2b09a578f",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.4/REVLib-driver-2026.0.4-osxuniversalstatic.zip",
        sha256 = "3661989a17a3c4767804acfe47b64a9484de29ac047f81ea82bad0d033946df1",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.4/RevLibBackendDriver-2026.0.4-windowsx86-64.zip",
        sha256 = "141c578dbd57c68b2f861771e963222180245fcdb54fb3d957196ee62c293213",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.4/RevLibBackendDriver-2026.0.4-windowsx86-64static.zip",
        sha256 = "3fa137137cf6f6438e1063615e68a07f40915236fd9fec6edd188efd9c2f6d09",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.4/RevLibBackendDriver-2026.0.4-linuxarm64.zip",
        sha256 = "f68dd69b41a3abf91c8b8ca40014fc89d2fa2bbc9a82d0807f5154a0be9caf0b",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.4/RevLibBackendDriver-2026.0.4-linuxarm64static.zip",
        sha256 = "ca4d8376e83d709f94b536747fa57aa33f088e86a84e74bb7676337b8a330f54",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.4/RevLibBackendDriver-2026.0.4-linuxx86-64.zip",
        sha256 = "231eb159b40c60a0f2a9984abb2c875a0b096af511c08252b27826cb270ec900",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.4/RevLibBackendDriver-2026.0.4-linuxx86-64static.zip",
        sha256 = "5fe58a9ce049d3852f0fb1b7680ec12a4d5039b1bd1683d182c0c73328107b5a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.4/RevLibBackendDriver-2026.0.4-linuxathena.zip",
        sha256 = "950489208527d737eddef50c7f832ef5a5d777adf9aae6accef3d0687fc11951",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.4/RevLibBackendDriver-2026.0.4-linuxathenastatic.zip",
        sha256 = "842d03c54c89bdc4ad0db89be0dc1c948e191f5e239f6d5b7056230b426ad31c",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.4/RevLibBackendDriver-2026.0.4-linuxarm32.zip",
        sha256 = "65f230d465fb51f0c9d0538d286324312422bc512b9874398eaaa8e628c428b0",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.4/RevLibBackendDriver-2026.0.4-linuxarm32static.zip",
        sha256 = "f5cc8b0f9a1974990af608cb047f26245a9221d45543e334378e93505ab66fb6",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.4/RevLibBackendDriver-2026.0.4-osxuniversal.zip",
        sha256 = "63367a8a34f13152c26644f633145b3b72e70b4585732177ad23a0cf3862e428",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libBackendDriver.dylib osx/universal/shared/libBackendDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.4/RevLibBackendDriver-2026.0.4-osxuniversalstatic.zip",
        sha256 = "36ffd7b26900d2b79e67b0779893c4c2ad207c376410dc53feb9e2ff5851c5b1",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.4/RevLibWpiBackendDriver-2026.0.4-windowsx86-64.zip",
        sha256 = "30be5743e328790e93d95888fea477a31fbfb93d9113d8e032f79d2727b1c101",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.4/RevLibWpiBackendDriver-2026.0.4-windowsx86-64static.zip",
        sha256 = "52e0801dcdb042012c4a1ed73bd6b05f307e563dd868b2b2d8d8b1fc26ab6414",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.4/RevLibWpiBackendDriver-2026.0.4-linuxarm64.zip",
        sha256 = "d68481b00f75d969586c56899a57ae186a4a073f5a7d75150219abe1db382c72",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.4/RevLibWpiBackendDriver-2026.0.4-linuxarm64static.zip",
        sha256 = "022a4232c0cee9823e9d4f3ebfb2ab55a9cab70d98fa4cafddf58fd9f86f1824",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.4/RevLibWpiBackendDriver-2026.0.4-linuxx86-64.zip",
        sha256 = "3df8c07b1d5c9e087f35df85894bb4196fe6d34e0102420b18434546ea7afd39",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.4/RevLibWpiBackendDriver-2026.0.4-linuxx86-64static.zip",
        sha256 = "07a770897cb20ccfc0c88943aad2fe455f31d122d4bf0492c55ceb991bf9eb88",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.4/RevLibWpiBackendDriver-2026.0.4-linuxathena.zip",
        sha256 = "80b9a5b7d8c85fa0f153da13c4c2e0dd83e5692bae850cbe941602b12ed6790c",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.4/RevLibWpiBackendDriver-2026.0.4-linuxathenastatic.zip",
        sha256 = "544fe1da4d14ab3d92a5ba5fb4671f7fdb0eee1daeef952b07f124d841313290",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.4/RevLibWpiBackendDriver-2026.0.4-linuxarm32.zip",
        sha256 = "0d12503840b75ca3e2b7f1b87461f1f1a5f18f90cb010a8998a4cf0540920c38",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.4/RevLibWpiBackendDriver-2026.0.4-linuxarm32static.zip",
        sha256 = "35586c7a657079352a5510612bbef2e165f7c65cddc3ec7266c047872350cc62",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.4/RevLibWpiBackendDriver-2026.0.4-osxuniversal.zip",
        sha256 = "2b095ddfb3852abc82e72af892eb9553c8dfd15cc7b1b97f12da1558141e3b7c",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLibWpi.dylib osx/universal/shared/libREVLibWpi.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.4/RevLibWpiBackendDriver-2026.0.4-osxuniversalstatic.zip",
        sha256 = "828a88b0380332fab5d0fb6ed8c56b6c4cfff5e267a3917453053ea72eba6a69",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
