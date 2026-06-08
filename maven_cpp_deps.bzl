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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-3/REVLib-cpp-2027.0.0-alpha-3-headers.zip",
        sha256 = "059ecc18b765824bee8ddb402176857627ec232501e937f4f584606039e67190",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-3/REVLib-cpp-2027.0.0-alpha-3-windowsx86-64.zip",
        sha256 = "40c63d8d6c4d65bdb563432ec3ceac87d0c0a2c460595151c11a4ef88846dbc9",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-3/REVLib-cpp-2027.0.0-alpha-3-windowsx86-64static.zip",
        sha256 = "c8ee1a4647303b86734324b3e9f87a9ae34bd2148ffd6a360d644aa18ea1b444",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-3/REVLib-cpp-2027.0.0-alpha-3-linuxarm64.zip",
        sha256 = "b093b49845d23f341de1fb78a3a9bb4a7122c9a32911df3ec65b91bbfd076554",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-3/REVLib-cpp-2027.0.0-alpha-3-linuxarm64static.zip",
        sha256 = "95bd15d622c6becdd5625d24eb31ec5092e31ada5e18cd4d3a011e4d43a77d6d",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-3/REVLib-cpp-2027.0.0-alpha-3-linuxx86-64.zip",
        sha256 = "72e7d78e2d450dbf86597a6e8b54b2e7521be329b7af2228d24b32dc6390de15",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-3/REVLib-cpp-2027.0.0-alpha-3-linuxx86-64static.zip",
        sha256 = "4382ff95c71238a30b2b1d687e42c0d23d7b38c943cb6f3f432b9f4860151d86",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxsystemcore",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-3/REVLib-cpp-2027.0.0-alpha-3-linuxsystemcore.zip",
        sha256 = "a80929dd167ad9296593c5b7d47c7cfb2bd3b5e4beb7400d3a9e5e5fa3c85885",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxsystemcorestatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-3/REVLib-cpp-2027.0.0-alpha-3-linuxsystemcorestatic.zip",
        sha256 = "fa9b94ed8416ea9f6f9dae7acba1387ce60dfe9b4f8b70305a82c871ba396586",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-3/REVLib-cpp-2027.0.0-alpha-3-osxuniversal.zip",
        sha256 = "d6d2cd6c5bb8ddd2a82664621bd63167c925b4f3ceed527e3000df12a85d36da",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLib.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libREVLibDriver.dylib @rpath/libREVLibDriver.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libdatalog.dylib @rpath/libdatalog.dylib osx/universal/shared/libREVLib.dylib",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-3/REVLib-cpp-2027.0.0-alpha-3-osxuniversalstatic.zip",
        sha256 = "75f8dff493f326837a7f40f4e1c8612ed5c75d36b3432266c22731fce5bb8d3b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-3/REVLib-driver-2027.0.0-alpha-3-headers.zip",
        sha256 = "3e231dfb621c6c80a67b9d641a6810b260a79ba7a74a98d96cc8aefae0e22724",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-3/REVLib-driver-2027.0.0-alpha-3-windowsx86-64.zip",
        sha256 = "2accbe37dcfbe45903bca0f638d558ecb0d30132d014ac820e193ea64e74b82f",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-3/REVLib-driver-2027.0.0-alpha-3-windowsx86-64static.zip",
        sha256 = "7862db16aa11519935b6ae946b4b4670c197a87c5330d2c7ce69ca752cddca7f",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-3/REVLib-driver-2027.0.0-alpha-3-linuxarm64.zip",
        sha256 = "f24388c5d9f850eb5aac5d3a8851f20f724821299f09de1aef12264a0fa68a07",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-3/REVLib-driver-2027.0.0-alpha-3-linuxarm64static.zip",
        sha256 = "87fe5814bf362b806ffce2ae6ea7296a8a784be211b7eeb9981c4bcf6cd1e6d1",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-3/REVLib-driver-2027.0.0-alpha-3-linuxx86-64.zip",
        sha256 = "62fae9119538af30e9f02037e924ba08b3dc2b183b88b6dbc78389ab0ce6bae5",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-3/REVLib-driver-2027.0.0-alpha-3-linuxx86-64static.zip",
        sha256 = "e410d814b8263277945c096965880fbe94c4df154b64af04611880cff24c13c7",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxsystemcore",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-3/REVLib-driver-2027.0.0-alpha-3-linuxsystemcore.zip",
        sha256 = "a8f2d3235bf64f251acf7eca6fa51c850a81fb8cb3e4ae549c62852c11bef551",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxsystemcorestatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-3/REVLib-driver-2027.0.0-alpha-3-linuxsystemcorestatic.zip",
        sha256 = "a0279809cc5b55eae8fe1393b525fa4df5f3adb948d051e42cc3c41ebfbb65a3",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-3/REVLib-driver-2027.0.0-alpha-3-osxuniversal.zip",
        sha256 = "afa8582d930909819da21c8bf0eef731e978c6772d5c010fe0a044080211e92c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLibDriver.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libdatalog.dylib @rpath/libdatalog.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libntcore.dylib @rpath/libntcore.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libwpiHal.dylib @rpath/libwpiHal.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libwpimath.dylib @rpath/libwpimath.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libwpinet.dylib @rpath/libwpinet.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libwpiutil.dylib @rpath/libwpiutil.dylib osx/universal/shared/libREVLibDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-3/REVLib-driver-2027.0.0-alpha-3-osxuniversalstatic.zip",
        sha256 = "e14933840067c29ec8f27072b070570fa0701b973b45ed46f5d5b3d48c146a37",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-3/RevLibBackendDriver-2027.0.0-alpha-3-windowsx86-64.zip",
        sha256 = "b118dd99c30ca4f9ec384b3484167ca2c34b8baa7a1b830e11d0531cef1039d3",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-3/RevLibBackendDriver-2027.0.0-alpha-3-windowsx86-64static.zip",
        sha256 = "4a1c96410c1b84e2fd0ba8f9acfd0e63dc6f8bd159d57146b080c834e28e9df2",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-3/RevLibBackendDriver-2027.0.0-alpha-3-linuxarm64.zip",
        sha256 = "242077301627feae97a3aea3e156f76a9741cdd5faeae2bd9a77efa0f7604ca7",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-3/RevLibBackendDriver-2027.0.0-alpha-3-linuxarm64static.zip",
        sha256 = "828c765b0bc6e00d347b8c9539602736150d8c0e62146826ff69c8d86fa26511",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-3/RevLibBackendDriver-2027.0.0-alpha-3-linuxx86-64.zip",
        sha256 = "6625e92bf620f2ebbf335aa15bb5c9a8d6871705e9022ed368661fee69151f4b",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-3/RevLibBackendDriver-2027.0.0-alpha-3-linuxx86-64static.zip",
        sha256 = "5857511f271da77c8ea778fb98f85dd5ce1dd85460d6c7912908e660d57670bd",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxsystemcore",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-3/RevLibBackendDriver-2027.0.0-alpha-3-linuxsystemcore.zip",
        sha256 = "a853294b9f82f672f9c447d0b09d42f0857699bfb8d9083b6622290e5c246a69",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxsystemcorestatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-3/RevLibBackendDriver-2027.0.0-alpha-3-linuxsystemcorestatic.zip",
        sha256 = "6188e931a16eee5b398a41247594879b667169cce57f14d6cd71234b33fd2113",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-3/RevLibBackendDriver-2027.0.0-alpha-3-osxuniversal.zip",
        sha256 = "8891e70438ea820c72342a322589afc74f202a01489fd34fffa56c27d2cf9680",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libBackendDriver.dylib osx/universal/shared/libBackendDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-3/RevLibBackendDriver-2027.0.0-alpha-3-osxuniversalstatic.zip",
        sha256 = "690e8849a98296fe019054a72e624797f59c58fa52a09ec62aca9d99ab420905",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-3/RevLibWpiBackendDriver-2027.0.0-alpha-3-windowsx86-64.zip",
        sha256 = "fe22d4545a3dffbf320069a2a0b36a11857ffbcd41faca008c6ebfb2ff2128b4",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-3/RevLibWpiBackendDriver-2027.0.0-alpha-3-windowsx86-64static.zip",
        sha256 = "0542ea77a4f646f1b63a1d1990d295dcd87b29179365db08f6c97ee914b9eb89",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-3/RevLibWpiBackendDriver-2027.0.0-alpha-3-linuxarm64.zip",
        sha256 = "3a4c328d28034ab2d23b3c06e16cf528a0197fcc2153cd5d317af7508faccd4d",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-3/RevLibWpiBackendDriver-2027.0.0-alpha-3-linuxarm64static.zip",
        sha256 = "a04062c2b4969af8e0cca637c82e0039e0aae5214b397d9ec860695513d8b7a4",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-3/RevLibWpiBackendDriver-2027.0.0-alpha-3-linuxx86-64.zip",
        sha256 = "09608c18a947017e6dccb732d8ae1c070b1cf373601a0c26d223d86c1433aade",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-3/RevLibWpiBackendDriver-2027.0.0-alpha-3-linuxx86-64static.zip",
        sha256 = "11b8b3a50b589b6762e648055ed3dc6f17799fb1832e5e2eabd6a99ec0878a05",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxsystemcore",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-3/RevLibWpiBackendDriver-2027.0.0-alpha-3-linuxsystemcore.zip",
        sha256 = "dfde91de3d5298e0e6f862da5b600617cb2efe238294fd5464c046cdac4c404c",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxsystemcorestatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-3/RevLibWpiBackendDriver-2027.0.0-alpha-3-linuxsystemcorestatic.zip",
        sha256 = "b2dfe1e440aff4914e571dbed0c2fc73b243931d74232ad3a4b4308e4c23d3c8",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-3/RevLibWpiBackendDriver-2027.0.0-alpha-3-osxuniversal.zip",
        sha256 = "3c8bda8933ec7272dfd2c8e4d29e3fcf17d4ad56154f542be73d70d5a8293e0f",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLibWpi.dylib osx/universal/shared/libREVLibWpi.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-3/RevLibWpiBackendDriver-2027.0.0-alpha-3-osxuniversalstatic.zip",
        sha256 = "3c6cba023a0ff41776c9377fc21c2a433047cb6d889f8a8199184f22062f069a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
