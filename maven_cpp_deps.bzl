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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.3/REVLib-cpp-2026.0.3-headers.zip",
        sha256 = "a464f1c2687f3427ddf964343ace0a069c5f56071d3b56f6c36366046edf2622",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.3/REVLib-cpp-2026.0.3-windowsx86-64.zip",
        sha256 = "6b2a1d8c0545367366e1694ea77b22d2b3463e10dedd24e203e4717cf3d38a3b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.3/REVLib-cpp-2026.0.3-windowsx86-64static.zip",
        sha256 = "d8e173ccd62ca041db116528ad16009d678e1422ce03399704d559dcba753ead",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.3/REVLib-cpp-2026.0.3-linuxarm64.zip",
        sha256 = "d5eda6d808c93d7013cff3c5d45a8675ab79885814d5e0e87d88557388640d15",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.3/REVLib-cpp-2026.0.3-linuxarm64static.zip",
        sha256 = "fc314441437fa6a99cd19dae7293ad23d57109dc14071aa6a17eb42ff6f224c2",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.3/REVLib-cpp-2026.0.3-linuxx86-64.zip",
        sha256 = "94176e9fb84d5fd4bd8276c77486479665b4742455d07db2e307531fbdaecc97",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.3/REVLib-cpp-2026.0.3-linuxx86-64static.zip",
        sha256 = "3512264e37f7a1805e7be3156deb4cc1e23613200aaf768336fa4639d7912d8d",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.3/REVLib-cpp-2026.0.3-linuxathena.zip",
        sha256 = "32041659724ba647a614c339b39538029efd26b1b2a257a22d5d62feba2a5c22",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.3/REVLib-cpp-2026.0.3-linuxathenastatic.zip",
        sha256 = "b4d65e56c8131151b05ebde84d33f7ed1f15e1c61843ca41bffadaa01ba158fc",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.3/REVLib-cpp-2026.0.3-linuxarm32.zip",
        sha256 = "4f3f0481b9447310c9bd9ef47e8af13f93871b654e15304178482c311ed70266",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.3/REVLib-cpp-2026.0.3-linuxarm32static.zip",
        sha256 = "2483a99cf8d0ba9d13441bfb22ae81b2b2f58aba13b7c19eb29f456ab87bd255",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.3/REVLib-cpp-2026.0.3-osxuniversal.zip",
        sha256 = "67b90b1ad192af9fe39adfc808a5d5db1cc4c9abf09ab4e608d55be0efb705a9",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.3/REVLib-cpp-2026.0.3-osxuniversalstatic.zip",
        sha256 = "872b0d1b7ffd3a40f170c89ed554b60112979f9948dd01c7337bbe54041410cf",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.3/REVLib-driver-2026.0.3-headers.zip",
        sha256 = "86a7e7fe8953cc21d0f3a9ef8a37ab16d12b483633a4d74a45c35753b56036e3",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.3/REVLib-driver-2026.0.3-windowsx86-64.zip",
        sha256 = "f4fb46f801613d424f4f35e2b0d7ff301a63f3aeb99aa75d5d207a5b7c19b34d",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.3/REVLib-driver-2026.0.3-windowsx86-64static.zip",
        sha256 = "fa104880d90e67067bf0bf9ccf8b55b3a886739533fc2e1d54ed2fe2d1c10c49",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.3/REVLib-driver-2026.0.3-linuxarm64.zip",
        sha256 = "e4de683f912b0ec3491c86f702368e6d8d536ecb722a2239674f096253260775",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.3/REVLib-driver-2026.0.3-linuxarm64static.zip",
        sha256 = "0a65fadc5e9080c8ebac77aa397129b7e25e671be3b0f6f19a9abe6cceac76a4",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.3/REVLib-driver-2026.0.3-linuxx86-64.zip",
        sha256 = "13e89d2ad3b9883d8d7eebc9bb9b6910298df2c19f65e875d9b4cfb8c7dc1bb1",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.3/REVLib-driver-2026.0.3-linuxx86-64static.zip",
        sha256 = "35e62ab4e4cdb1ab91c7f8c2d1a2e22aaa6dfb00449e1a53410edb150e8f8357",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.3/REVLib-driver-2026.0.3-linuxathena.zip",
        sha256 = "0be59c041c969803e3fe3d7c8591bfb6b433f321ee71c12c9d38c1729cecde33",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.3/REVLib-driver-2026.0.3-linuxathenastatic.zip",
        sha256 = "b72dd692a67e714c4679bbe9891948bf97bbea6a4b7cdad25251fd74c3c2d1c9",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.3/REVLib-driver-2026.0.3-linuxarm32.zip",
        sha256 = "0aa03a5d090b571d4feaa278a9a5746cc2e801bcaee2a0b108cdc50d8ff363b9",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.3/REVLib-driver-2026.0.3-linuxarm32static.zip",
        sha256 = "d4581ce1be83c1bef45785e7781d5334702424a944c85baf1035eaf34735f0f4",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.3/REVLib-driver-2026.0.3-osxuniversal.zip",
        sha256 = "03d3928b50b144aebdbd4c7958f226065f951753abd4c7367e12d611c6bc8858",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.3/REVLib-driver-2026.0.3-osxuniversalstatic.zip",
        sha256 = "e54ad729fdefbe87b6bec1851af563488a0fe4dd97b573e5748ab7a942caa8a2",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.3/RevLibBackendDriver-2026.0.3-windowsx86-64.zip",
        sha256 = "141c578dbd57c68b2f861771e963222180245fcdb54fb3d957196ee62c293213",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.3/RevLibBackendDriver-2026.0.3-windowsx86-64static.zip",
        sha256 = "3fa137137cf6f6438e1063615e68a07f40915236fd9fec6edd188efd9c2f6d09",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.3/RevLibBackendDriver-2026.0.3-linuxarm64.zip",
        sha256 = "f68dd69b41a3abf91c8b8ca40014fc89d2fa2bbc9a82d0807f5154a0be9caf0b",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.3/RevLibBackendDriver-2026.0.3-linuxarm64static.zip",
        sha256 = "ca4d8376e83d709f94b536747fa57aa33f088e86a84e74bb7676337b8a330f54",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.3/RevLibBackendDriver-2026.0.3-linuxx86-64.zip",
        sha256 = "231eb159b40c60a0f2a9984abb2c875a0b096af511c08252b27826cb270ec900",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.3/RevLibBackendDriver-2026.0.3-linuxx86-64static.zip",
        sha256 = "5fe58a9ce049d3852f0fb1b7680ec12a4d5039b1bd1683d182c0c73328107b5a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.3/RevLibBackendDriver-2026.0.3-linuxathena.zip",
        sha256 = "950489208527d737eddef50c7f832ef5a5d777adf9aae6accef3d0687fc11951",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.3/RevLibBackendDriver-2026.0.3-linuxathenastatic.zip",
        sha256 = "842d03c54c89bdc4ad0db89be0dc1c948e191f5e239f6d5b7056230b426ad31c",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.3/RevLibBackendDriver-2026.0.3-linuxarm32.zip",
        sha256 = "65f230d465fb51f0c9d0538d286324312422bc512b9874398eaaa8e628c428b0",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.3/RevLibBackendDriver-2026.0.3-linuxarm32static.zip",
        sha256 = "f5cc8b0f9a1974990af608cb047f26245a9221d45543e334378e93505ab66fb6",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.3/RevLibBackendDriver-2026.0.3-osxuniversal.zip",
        sha256 = "63367a8a34f13152c26644f633145b3b72e70b4585732177ad23a0cf3862e428",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libBackendDriver.dylib osx/universal/shared/libBackendDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.3/RevLibBackendDriver-2026.0.3-osxuniversalstatic.zip",
        sha256 = "36ffd7b26900d2b79e67b0779893c4c2ad207c376410dc53feb9e2ff5851c5b1",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.3/RevLibWpiBackendDriver-2026.0.3-windowsx86-64.zip",
        sha256 = "46aa1fa2e28096778ce81166c9d1df25b7b47a3d5bd2335729510e889a2d60b1",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.3/RevLibWpiBackendDriver-2026.0.3-windowsx86-64static.zip",
        sha256 = "8eb2d55e2a667dfaa6dd365b7d9c31199452f40099a7c76078b37d31fec8ba54",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.3/RevLibWpiBackendDriver-2026.0.3-linuxarm64.zip",
        sha256 = "d68481b00f75d969586c56899a57ae186a4a073f5a7d75150219abe1db382c72",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.3/RevLibWpiBackendDriver-2026.0.3-linuxarm64static.zip",
        sha256 = "022a4232c0cee9823e9d4f3ebfb2ab55a9cab70d98fa4cafddf58fd9f86f1824",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.3/RevLibWpiBackendDriver-2026.0.3-linuxx86-64.zip",
        sha256 = "3df8c07b1d5c9e087f35df85894bb4196fe6d34e0102420b18434546ea7afd39",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.3/RevLibWpiBackendDriver-2026.0.3-linuxx86-64static.zip",
        sha256 = "07a770897cb20ccfc0c88943aad2fe455f31d122d4bf0492c55ceb991bf9eb88",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.3/RevLibWpiBackendDriver-2026.0.3-linuxathena.zip",
        sha256 = "80b9a5b7d8c85fa0f153da13c4c2e0dd83e5692bae850cbe941602b12ed6790c",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.3/RevLibWpiBackendDriver-2026.0.3-linuxathenastatic.zip",
        sha256 = "544fe1da4d14ab3d92a5ba5fb4671f7fdb0eee1daeef952b07f124d841313290",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.3/RevLibWpiBackendDriver-2026.0.3-linuxarm32.zip",
        sha256 = "0d12503840b75ca3e2b7f1b87461f1f1a5f18f90cb010a8998a4cf0540920c38",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.3/RevLibWpiBackendDriver-2026.0.3-linuxarm32static.zip",
        sha256 = "35586c7a657079352a5510612bbef2e165f7c65cddc3ec7266c047872350cc62",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.3/RevLibWpiBackendDriver-2026.0.3-osxuniversal.zip",
        sha256 = "2b095ddfb3852abc82e72af892eb9553c8dfd15cc7b1b97f12da1558141e3b7c",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLibWpi.dylib osx/universal/shared/libREVLibWpi.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.3/RevLibWpiBackendDriver-2026.0.3-osxuniversalstatic.zip",
        sha256 = "828a88b0380332fab5d0fb6ed8c56b6c4cfff5e267a3917453053ea72eba6a69",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
