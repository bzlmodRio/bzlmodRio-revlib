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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0/REVLib-cpp-2026.0.0-headers.zip",
        sha256 = "966e4589d93a3b434253d8e09fc2d1c8242b3f85e9e09894b85f4188d0f6312b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0/REVLib-cpp-2026.0.0-windowsx86-64.zip",
        sha256 = "e250e773b0884699eb7e84a4978374ef20ce85eacca19145714abe16fdaddff8",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0/REVLib-cpp-2026.0.0-windowsx86-64static.zip",
        sha256 = "a7441804473aeb7bebe00c1a15a652aeaf2c47a308517fc64ab0fe60e49da113",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0/REVLib-cpp-2026.0.0-linuxarm64.zip",
        sha256 = "e6790ed45969062d3f48bb60a101f1ed0b331ba459c025a23ebf42f145113264",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0/REVLib-cpp-2026.0.0-linuxarm64static.zip",
        sha256 = "8ed96515c057bc6a5183e45b76da85eeac7b3b5ca5e48181513b9961968b12af",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0/REVLib-cpp-2026.0.0-linuxx86-64.zip",
        sha256 = "a4efb1e9ef4c67a97308ed07ed480db1959b19c449502a96550651181adc6457",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0/REVLib-cpp-2026.0.0-linuxx86-64static.zip",
        sha256 = "339b862ab4b21a9d714da1d43def59e4b1539e8e092d3c091174e4bf3f7681a1",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0/REVLib-cpp-2026.0.0-linuxathena.zip",
        sha256 = "1b0b040dfa4baeca2cba2a850ffa6b4d3cde405c5e0e7d60f4af085756fce326",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0/REVLib-cpp-2026.0.0-linuxathenastatic.zip",
        sha256 = "ccba727cecc766e0e3e9147b8a3ab1261cc5e510226d60ca56307ae3daedce7f",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0/REVLib-cpp-2026.0.0-linuxarm32.zip",
        sha256 = "efc2887bb8cdf1e41289a4fbcf6f0734f8fd2ffa8f9cec2efe097bf8b6eae1e1",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0/REVLib-cpp-2026.0.0-linuxarm32static.zip",
        sha256 = "14078047803284b94d43dced1c1b60fa2ba8f0a22d9bb1e885b3b3c1c7bfd8ad",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0/REVLib-cpp-2026.0.0-osxuniversal.zip",
        sha256 = "7b541ecae0e02985691017d66721f207218e743c43ebca5088bbc762405204e3",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.0/REVLib-cpp-2026.0.0-osxuniversalstatic.zip",
        sha256 = "23b47f40615e127cf3978bcc0ae87e1ec6e0c8505e2663ba922a3afc6ea53a37",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0/REVLib-driver-2026.0.0-headers.zip",
        sha256 = "7833932170f385f8d70a6a494bc6fb95dc945e9abb66002bb14ae0427efaba2d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0/REVLib-driver-2026.0.0-windowsx86-64.zip",
        sha256 = "2d9140538680d8b30b765b6f6632a66024ce431f0c31d82c270bbed76ee11648",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0/REVLib-driver-2026.0.0-windowsx86-64static.zip",
        sha256 = "ecb43780965a571d738d539d7b820111107244dfdcbff5e37cc1fc7f61f75266",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0/REVLib-driver-2026.0.0-linuxarm64.zip",
        sha256 = "ee1f71ea94101c2940079a73c6c47c85a1cfe7c816acbafc7e154dfdb5efec5e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0/REVLib-driver-2026.0.0-linuxarm64static.zip",
        sha256 = "9a164f83b7bb5e6e896f75f1a040f6296ecfa53266d1919161accad7322b6a86",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0/REVLib-driver-2026.0.0-linuxx86-64.zip",
        sha256 = "bf7bd5efa66e6d94091d42661e08a493963a34984c6b96e6f40e961f9d09d7f2",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0/REVLib-driver-2026.0.0-linuxx86-64static.zip",
        sha256 = "6dc5442bb6ec25d44c231e4ac1feda551f05f3684b5cfe956b30ff3f40e3455b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0/REVLib-driver-2026.0.0-linuxathena.zip",
        sha256 = "76311c6446fb8a0c25650071ee485d11d2f9482005d9d86882397f1efa09aa24",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0/REVLib-driver-2026.0.0-linuxathenastatic.zip",
        sha256 = "15a0ab2c376d55a59b93e1d76252bbd6998672c0aafa4162dff9b2210fa21694",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0/REVLib-driver-2026.0.0-linuxarm32.zip",
        sha256 = "2ac48f56fa4eabf11ba6f2c7ed4a00a09112243f223f8d304828a86912df0e61",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0/REVLib-driver-2026.0.0-linuxarm32static.zip",
        sha256 = "1417735b1e4fea4797d962d9a59780d66ceb6a755e4bf793ae267e0d8b514520",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0/REVLib-driver-2026.0.0-osxuniversal.zip",
        sha256 = "71db7c93eea190a2b1487fec60fdc17aaa76d1d2a75cf4b460c1e8513dfd515c",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.0/REVLib-driver-2026.0.0-osxuniversalstatic.zip",
        sha256 = "984257ffe78f4b2084cefdf73cf8599e9d8cf12636411f17a0717258475e2aed",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0/RevLibBackendDriver-2026.0.0-windowsx86-64.zip",
        sha256 = "cc49fbef0fc418a3bdc97c841ddb751633525b3f2b40b40f108fecc18bef8bdd",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0/RevLibBackendDriver-2026.0.0-windowsx86-64static.zip",
        sha256 = "92c36fbec232faf1ee1e6fa8229d0bb7625fad7981514c08f32de5bc7a336481",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0/RevLibBackendDriver-2026.0.0-linuxarm64.zip",
        sha256 = "b49ddf3144e2ce4b46d16dfd5d9af3ed81b990a210ce3dc3ecfda50fde449ccc",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0/RevLibBackendDriver-2026.0.0-linuxarm64static.zip",
        sha256 = "ff78c06f7bf81dfa364f4ca4b466e779882c5f57f74f05c4b5c1cb6c864baad4",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0/RevLibBackendDriver-2026.0.0-linuxx86-64.zip",
        sha256 = "0b9ca3294dd4ea970fbfcdfc888afc20521d1c777263c3351570c4ea7bcf50cf",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0/RevLibBackendDriver-2026.0.0-linuxx86-64static.zip",
        sha256 = "23d07c068c79fdb2a0008fbe7b5ccc7285b6a5d0a3d0ebf0ee95fe6f20a045fc",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0/RevLibBackendDriver-2026.0.0-linuxathena.zip",
        sha256 = "b605d579d8f5e744e8e80391660c282eac87c3ebd8e8217300229fcc35b0fa6b",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0/RevLibBackendDriver-2026.0.0-linuxathenastatic.zip",
        sha256 = "91d8181e22f3c9f0313029d4f9029fd80af678f81a876cd7b06b47fb31256a37",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0/RevLibBackendDriver-2026.0.0-linuxarm32.zip",
        sha256 = "46189f7b1d3ff82c5bdc1478837f32ba68e2c9696c6b42efda814d67390f55f9",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0/RevLibBackendDriver-2026.0.0-linuxarm32static.zip",
        sha256 = "c761254be3fc409ae33d4f935e8baf357742315fd09b4e1e15c5b3f01330f9c2",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0/RevLibBackendDriver-2026.0.0-osxuniversal.zip",
        sha256 = "17b008fc54b7047825e63530980d1422ebbdab43b13e1fadf44baf9f34b4e9b2",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libBackendDriver.dylib osx/universal/shared/libBackendDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.0/RevLibBackendDriver-2026.0.0-osxuniversalstatic.zip",
        sha256 = "d7799eb4cb6d3f71d215737f415bfcac628b4d217145fb893b85d4518fc989c1",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0/RevLibWpiBackendDriver-2026.0.0-windowsx86-64.zip",
        sha256 = "a25a9a7c282210e11aa629a6ef2bcb65582f49a828f6891a3e913851c661be9c",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0/RevLibWpiBackendDriver-2026.0.0-windowsx86-64static.zip",
        sha256 = "83a8a63e0706eb67257ddf0d7989aae3e08d920dbe184d682a2f37eea7a0ddf4",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0/RevLibWpiBackendDriver-2026.0.0-linuxarm64.zip",
        sha256 = "fa49c4fce45ce3371fc52b80e5ce9a75a78b5619a84cff79cd05390eb0974c4a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0/RevLibWpiBackendDriver-2026.0.0-linuxarm64static.zip",
        sha256 = "d307b516212184bab017c253c68b5f6e34d7e1f5863420ac5d4f9415be8a0384",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0/RevLibWpiBackendDriver-2026.0.0-linuxx86-64.zip",
        sha256 = "96f3962d18cae98e6f01130e101129836a2a3601dde93ecfeb4aff85a07be546",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0/RevLibWpiBackendDriver-2026.0.0-linuxx86-64static.zip",
        sha256 = "ebfa8f7fb7d564c5cbe14657e00d566c30deb6fb8ca1362dfb0dc01b3452b175",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0/RevLibWpiBackendDriver-2026.0.0-linuxathena.zip",
        sha256 = "a7a421de9fa28c5abcb8b8c407b44dd1749161a3133e13edd1def53d6af13c76",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0/RevLibWpiBackendDriver-2026.0.0-linuxathenastatic.zip",
        sha256 = "f8c05d9c78be914ce816eac0c43ff582063b07fbfd397fde6cf81d17b8e363e0",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0/RevLibWpiBackendDriver-2026.0.0-linuxarm32.zip",
        sha256 = "df8a1781554aff21f4f3f920398575e3e2ef600d4fad9df3a9783b1d030fdcb9",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0/RevLibWpiBackendDriver-2026.0.0-linuxarm32static.zip",
        sha256 = "0e862a4305fb674bb6efc47810b2c5fb32af3c993647e0d12db3de96c945b78b",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0/RevLibWpiBackendDriver-2026.0.0-osxuniversal.zip",
        sha256 = "7977ff7458ab71688cb52a7924a89b6f6dd438f408b9860d5662b15db661f31a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLibWpi.dylib osx/universal/shared/libREVLibWpi.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.0/RevLibWpiBackendDriver-2026.0.0-osxuniversalstatic.zip",
        sha256 = "fe20a21d17559379262c7c7b974f82791c55eef21da2db2608e041fca9be0742",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
