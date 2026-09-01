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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-6/REVLib-cpp-2027.0.0-alpha-6-headers.zip",
        sha256 = "dd53341e631202177a72c0ac6e857922ab86ef943c9a7672639538110e4c394f",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-6/REVLib-cpp-2027.0.0-alpha-6-windowsx86-64.zip",
        sha256 = "fd69902dfee7bd2f58f0c892f9d6a143374d831c445786418a550549c22aa7fd",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-6/REVLib-cpp-2027.0.0-alpha-6-windowsx86-64static.zip",
        sha256 = "cd9a9b6411ae3fdfd4e382bf66ebef7a1f41d64157aa44801c8c99f6f6212d1c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-6/REVLib-cpp-2027.0.0-alpha-6-linuxarm64.zip",
        sha256 = "2f40d10117350f098c399849ff8a09e392bb0cbe79c9cbd033e1d98ba9003a0a",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-6/REVLib-cpp-2027.0.0-alpha-6-linuxarm64static.zip",
        sha256 = "e2edb9e7235d42ec8fdb7be6f4620cfdb22ad91aec34fe1a62eb49c62211bdad",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-6/REVLib-cpp-2027.0.0-alpha-6-linuxx86-64.zip",
        sha256 = "fb8e479fc371ef888b0b5728bcfe852150dd0f5e95d13e27a0606c4afc30c756",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-6/REVLib-cpp-2027.0.0-alpha-6-linuxx86-64static.zip",
        sha256 = "84eb0f101deecaeec6dd2d21897b0f7826bb8fb3f582682378d2f8dc11ebd292",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxsystemcore",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-6/REVLib-cpp-2027.0.0-alpha-6-linuxsystemcore.zip",
        sha256 = "1aa6f939259b5e2736b7c01767e5a284e40c4b0dae22f7f50979456dc1e26463",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxsystemcorestatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-6/REVLib-cpp-2027.0.0-alpha-6-linuxsystemcorestatic.zip",
        sha256 = "1ca80ff21973041b3dbb7412008def02f85c9a0dc128fe127d11133412064c6b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-6/REVLib-cpp-2027.0.0-alpha-6-osxuniversal.zip",
        sha256 = "4d20790a73181d93044accf9c24138a5aa3afb556346d19d92de94b68d3abb44",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-6/REVLib-cpp-2027.0.0-alpha-6-osxuniversalstatic.zip",
        sha256 = "b5cb10e574be8fd119760ac0f7c81f5178e0de71296cb162e1722790d36b7fdb",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-6/REVLib-driver-2027.0.0-alpha-6-headers.zip",
        sha256 = "4286c1d65a40ec41e74db9765695a4a6ce0dba3daf3201bb12275d84a46cc6bc",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-6/REVLib-driver-2027.0.0-alpha-6-windowsx86-64.zip",
        sha256 = "b5fad024e4f39c9e03c56e9539649c27f751d76099d4bee287070bc6dc1b0bec",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-6/REVLib-driver-2027.0.0-alpha-6-windowsx86-64static.zip",
        sha256 = "5ffa7a4902e92318c2caa25e6e2548eafaa76311da3e84aa0cf60c5a3a90fe7c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-6/REVLib-driver-2027.0.0-alpha-6-linuxarm64.zip",
        sha256 = "3f494da0ed94c130eb185e45dce15541767e01f422048ada698c05ecb6f35d5a",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-6/REVLib-driver-2027.0.0-alpha-6-linuxarm64static.zip",
        sha256 = "6d68f5927f74962578865443cd30a89aa3ea8efd62b5a0350446c8e5cae2d513",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-6/REVLib-driver-2027.0.0-alpha-6-linuxx86-64.zip",
        sha256 = "57f470ff0a26bea9e7bfa80a000cab311933116c7b09bf3656305074c66b94b5",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-6/REVLib-driver-2027.0.0-alpha-6-linuxx86-64static.zip",
        sha256 = "513c7f52284fc4f56c52985782b6fd2a6da353fbf4b67f4f2171cb11b82c1020",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxsystemcore",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-6/REVLib-driver-2027.0.0-alpha-6-linuxsystemcore.zip",
        sha256 = "582c88404433caf56696ea5509e0e0d85bd18e87fe3590a4ee5e46db62f4be1d",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxsystemcorestatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-6/REVLib-driver-2027.0.0-alpha-6-linuxsystemcorestatic.zip",
        sha256 = "f81d366bee5e3d2a019a09de53603de221eb9db0e6f1b3fe763509f1133f0724",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-6/REVLib-driver-2027.0.0-alpha-6-osxuniversal.zip",
        sha256 = "90134775058a6f8c3261408becc03fd1b2caf400e9f2a77e2c2bfd4491d7fa36",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-6/REVLib-driver-2027.0.0-alpha-6-osxuniversalstatic.zip",
        sha256 = "6f7d824be73b04b6bd98a07b32ea1a0fcc47ace83761c8c585e84e95fb967dfe",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-6/RevLibBackendDriver-2027.0.0-alpha-6-windowsx86-64.zip",
        sha256 = "36979008200726d01e3c8357ab61ec87c48ba6e77e4d2e8f2065152c6807853a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-6/RevLibBackendDriver-2027.0.0-alpha-6-windowsx86-64static.zip",
        sha256 = "841a471322f8c5b5d54121d1d5e47ed9156aa844ec16d90aa345865742fbd1bb",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-6/RevLibBackendDriver-2027.0.0-alpha-6-linuxarm64.zip",
        sha256 = "242077301627feae97a3aea3e156f76a9741cdd5faeae2bd9a77efa0f7604ca7",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-6/RevLibBackendDriver-2027.0.0-alpha-6-linuxarm64static.zip",
        sha256 = "828c765b0bc6e00d347b8c9539602736150d8c0e62146826ff69c8d86fa26511",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-6/RevLibBackendDriver-2027.0.0-alpha-6-linuxx86-64.zip",
        sha256 = "6625e92bf620f2ebbf335aa15bb5c9a8d6871705e9022ed368661fee69151f4b",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-6/RevLibBackendDriver-2027.0.0-alpha-6-linuxx86-64static.zip",
        sha256 = "5857511f271da77c8ea778fb98f85dd5ce1dd85460d6c7912908e660d57670bd",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxsystemcore",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-6/RevLibBackendDriver-2027.0.0-alpha-6-linuxsystemcore.zip",
        sha256 = "a853294b9f82f672f9c447d0b09d42f0857699bfb8d9083b6622290e5c246a69",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxsystemcorestatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-6/RevLibBackendDriver-2027.0.0-alpha-6-linuxsystemcorestatic.zip",
        sha256 = "6188e931a16eee5b398a41247594879b667169cce57f14d6cd71234b33fd2113",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-6/RevLibBackendDriver-2027.0.0-alpha-6-osxuniversal.zip",
        sha256 = "48c48a1e935497a8654f1130b79405b19b454bff630097fc1134571342f86a24",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libBackendDriver.dylib osx/universal/shared/libBackendDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-6/RevLibBackendDriver-2027.0.0-alpha-6-osxuniversalstatic.zip",
        sha256 = "33c71d83f0e82388fd5533cba2e04aa4606fd295ffee314543be66fad3e40a23",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-6/RevLibWpiBackendDriver-2027.0.0-alpha-6-windowsx86-64.zip",
        sha256 = "f02362e583de8570736af5b3da24cfe6d159241891328675d6bcd6afb494b654",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-6/RevLibWpiBackendDriver-2027.0.0-alpha-6-windowsx86-64static.zip",
        sha256 = "60524d502c8a33a88aa9736e4dba532accac3a5b24eb2417cbaef2714170066d",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-6/RevLibWpiBackendDriver-2027.0.0-alpha-6-linuxarm64.zip",
        sha256 = "3a4c328d28034ab2d23b3c06e16cf528a0197fcc2153cd5d317af7508faccd4d",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-6/RevLibWpiBackendDriver-2027.0.0-alpha-6-linuxarm64static.zip",
        sha256 = "a04062c2b4969af8e0cca637c82e0039e0aae5214b397d9ec860695513d8b7a4",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-6/RevLibWpiBackendDriver-2027.0.0-alpha-6-linuxx86-64.zip",
        sha256 = "09608c18a947017e6dccb732d8ae1c070b1cf373601a0c26d223d86c1433aade",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-6/RevLibWpiBackendDriver-2027.0.0-alpha-6-linuxx86-64static.zip",
        sha256 = "11b8b3a50b589b6762e648055ed3dc6f17799fb1832e5e2eabd6a99ec0878a05",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxsystemcore",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-6/RevLibWpiBackendDriver-2027.0.0-alpha-6-linuxsystemcore.zip",
        sha256 = "dfde91de3d5298e0e6f862da5b600617cb2efe238294fd5464c046cdac4c404c",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxsystemcorestatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-6/RevLibWpiBackendDriver-2027.0.0-alpha-6-linuxsystemcorestatic.zip",
        sha256 = "b2dfe1e440aff4914e571dbed0c2fc73b243931d74232ad3a4b4308e4c23d3c8",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-6/RevLibWpiBackendDriver-2027.0.0-alpha-6-osxuniversal.zip",
        sha256 = "d9a003f42d44cbf691c0ab152a8da01da799c9e8c839c3c657fe59c6f2dabc9d",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLibWpi.dylib osx/universal/shared/libREVLibWpi.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-6/RevLibWpiBackendDriver-2027.0.0-alpha-6-osxuniversalstatic.zip",
        sha256 = "6a6744f5331f3e48d7fc1a82efec5e5f308763121be48d8bc67cdd2ae875ac91",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )

deps = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
