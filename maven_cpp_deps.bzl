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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.5/REVLib-cpp-2026.0.5-headers.zip",
        sha256 = "01b906aa64acf4b9c32aa4e40fb6018aa6292c814c8dcc3cde8ac4fb816dac98",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.5/REVLib-cpp-2026.0.5-windowsx86-64.zip",
        sha256 = "2d58fe565a4850ef5ab8783e76baee22882aca1307579b13310259a3fbfd88bf",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.5/REVLib-cpp-2026.0.5-windowsx86-64static.zip",
        sha256 = "420df1d77c0fc28f9b93901d309130173c1f6aa168cf75b483ce31e4f03dfca7",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.5/REVLib-cpp-2026.0.5-linuxarm64.zip",
        sha256 = "07b8f21aa36852c4fe73f58508aba674a42edcfec11c2b7a43e83fdfbea65077",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.5/REVLib-cpp-2026.0.5-linuxarm64static.zip",
        sha256 = "920edc87d8fada147f763957a90bcaaaa678e9d02eb256d3b9a6c942fc387e22",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.5/REVLib-cpp-2026.0.5-linuxx86-64.zip",
        sha256 = "70110f8ec3ed4d2ff12bde41e7ac6fb101a3174d28c8282910cd0a84caf2514a",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.5/REVLib-cpp-2026.0.5-linuxx86-64static.zip",
        sha256 = "e25fd98105962be76b18d7034e2103724e5fee48622c89311801338de7b76e87",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.5/REVLib-cpp-2026.0.5-linuxathena.zip",
        sha256 = "1fb75454fccf38b9adf90e9b11755259739eb03710958fcc9361a8d9bda42492",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.5/REVLib-cpp-2026.0.5-linuxathenastatic.zip",
        sha256 = "175a17d37fb2859004e571ddb47f9e146a45e791b61de18c4dcd2069057b783a",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.5/REVLib-cpp-2026.0.5-linuxarm32.zip",
        sha256 = "8db4b4949a8a4436e73d0789f4dd60c614437f34bebc4c450f065cfd90147512",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.5/REVLib-cpp-2026.0.5-linuxarm32static.zip",
        sha256 = "72bc5de03e466c37c9df7d78c597ff1514d09fd88aca349da062d13d451ba0c7",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.5/REVLib-cpp-2026.0.5-osxuniversal.zip",
        sha256 = "342ea80d37b5032ca2825674c13a8b57e10bd87497721cf0547d3373fee94df7",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.5/REVLib-cpp-2026.0.5-osxuniversalstatic.zip",
        sha256 = "350d2a5f3a93bb364e6a730fa6f3162f8f1f9c3132a112d3f90945f6b6c548a9",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.5/REVLib-driver-2026.0.5-headers.zip",
        sha256 = "07b5fddb39bd40f991b30564f5483e8c20d6dbe99c1b23cca144d059f5395856",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.5/REVLib-driver-2026.0.5-windowsx86-64.zip",
        sha256 = "a141dd392a37583b38537867d47ee561b22c544bc44c5d1ea62eaf2c7287ada0",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.5/REVLib-driver-2026.0.5-windowsx86-64static.zip",
        sha256 = "36fcc380ce35aff754de7f37a6f60968d24777205049a5e223ecb69072c78b5d",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.5/REVLib-driver-2026.0.5-linuxarm64.zip",
        sha256 = "9ce2fafe6c529489085bae869e91097d9e4f2a521d16750486a92abac2d32a14",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.5/REVLib-driver-2026.0.5-linuxarm64static.zip",
        sha256 = "110b6f3f8c2d0994b61aa80fa2d7de4f3d0491cd5e7d299b81b7e594d56f73f9",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.5/REVLib-driver-2026.0.5-linuxx86-64.zip",
        sha256 = "5f6691fd6a4991a90540493d83558a755f2c027534295482fc4803c4690192a1",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.5/REVLib-driver-2026.0.5-linuxx86-64static.zip",
        sha256 = "6d341245f33d745045cdc36a94b26f4a43d847126f5b1a2f43af2ee9a9dab0cd",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.5/REVLib-driver-2026.0.5-linuxathena.zip",
        sha256 = "556082e9ba8b819539e570fc2b5bf14f92ec834db45e221cfb0eb91b10ded679",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.5/REVLib-driver-2026.0.5-linuxathenastatic.zip",
        sha256 = "4f7d8dca25461e6dc7841ff3c88aae97b04325fac019aeac7a7f2bd248215fcd",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.5/REVLib-driver-2026.0.5-linuxarm32.zip",
        sha256 = "4b8336e31a8aacc60c2ad16140fb1550870a892cfb83293e6c61a3c4232a012f",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.5/REVLib-driver-2026.0.5-linuxarm32static.zip",
        sha256 = "d4e22a78925c1d41cb553e49ba83ecf5265ab168475ba20d59152d9e2dfb9c2a",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.5/REVLib-driver-2026.0.5-osxuniversal.zip",
        sha256 = "5044836b1fe1f0152f2984b5a7a7b00913f40614678320073ddb77e4052d9263",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.5/REVLib-driver-2026.0.5-osxuniversalstatic.zip",
        sha256 = "e54dd7a566e9cd8cc3e7fcb1232743f225e80d145096e29e88b3cc807d617978",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.5/RevLibBackendDriver-2026.0.5-windowsx86-64.zip",
        sha256 = "141c578dbd57c68b2f861771e963222180245fcdb54fb3d957196ee62c293213",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.5/RevLibBackendDriver-2026.0.5-windowsx86-64static.zip",
        sha256 = "3fa137137cf6f6438e1063615e68a07f40915236fd9fec6edd188efd9c2f6d09",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.5/RevLibBackendDriver-2026.0.5-linuxarm64.zip",
        sha256 = "361a6f6b1477cb3e46f2b9180a46558d26c27c5b8255b0750ebe9adaf3077982",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.5/RevLibBackendDriver-2026.0.5-linuxarm64static.zip",
        sha256 = "ce200fb08481cc2fb71b6ee9efd64f7a29285e066d074416818242a53504d2fe",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.5/RevLibBackendDriver-2026.0.5-linuxx86-64.zip",
        sha256 = "3112d6f26580aa5ed6040b3735b62634d151fffe0ce2e6075d1fc2d52da9bc2a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.5/RevLibBackendDriver-2026.0.5-linuxx86-64static.zip",
        sha256 = "b9866101e278ef8fc063a623cc693ff93bd4c7662fa893ac8bbd338b4efe6df4",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.5/RevLibBackendDriver-2026.0.5-linuxathena.zip",
        sha256 = "d10aeb7eeef91ec263ba31f56b48a3e05e9a384ed32dbd8346d2cfbe5c1731d3",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.5/RevLibBackendDriver-2026.0.5-linuxathenastatic.zip",
        sha256 = "9bdaf24bf320dd4de2e338074552552af597fa843d5417831f858d9ba635c5ba",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.5/RevLibBackendDriver-2026.0.5-linuxarm32.zip",
        sha256 = "526418fd9a6e3c64b5aadfae664469a238cb7c760e5d73fada64e725196cdee3",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.5/RevLibBackendDriver-2026.0.5-linuxarm32static.zip",
        sha256 = "5a58e1e7bbffd9ccda999a821cc996376ce125b6e9131ee58755d640124df23b",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.5/RevLibBackendDriver-2026.0.5-osxuniversal.zip",
        sha256 = "63367a8a34f13152c26644f633145b3b72e70b4585732177ad23a0cf3862e428",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libBackendDriver.dylib osx/universal/shared/libBackendDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.5/RevLibBackendDriver-2026.0.5-osxuniversalstatic.zip",
        sha256 = "36ffd7b26900d2b79e67b0779893c4c2ad207c376410dc53feb9e2ff5851c5b1",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.5/RevLibWpiBackendDriver-2026.0.5-windowsx86-64.zip",
        sha256 = "30be5743e328790e93d95888fea477a31fbfb93d9113d8e032f79d2727b1c101",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.5/RevLibWpiBackendDriver-2026.0.5-windowsx86-64static.zip",
        sha256 = "52e0801dcdb042012c4a1ed73bd6b05f307e563dd868b2b2d8d8b1fc26ab6414",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.5/RevLibWpiBackendDriver-2026.0.5-linuxarm64.zip",
        sha256 = "8174424a02f3dd6d3573e6daf37f5fdb561bf149a1100a5346b7d8da2b0df1e0",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.5/RevLibWpiBackendDriver-2026.0.5-linuxarm64static.zip",
        sha256 = "ae2b129486b3d16d6ed34d7645e160bc9cfa87f0726c8248368354364de01a93",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.5/RevLibWpiBackendDriver-2026.0.5-linuxx86-64.zip",
        sha256 = "488be626eaac231e36fd4a015b15e0cf30f7a9ecfcfae1ea491c090360e07ddc",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.5/RevLibWpiBackendDriver-2026.0.5-linuxx86-64static.zip",
        sha256 = "58fb27c4847869f5aa6f85feafc974e706cacfcb674f3a4033b3d1333c8f7607",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.5/RevLibWpiBackendDriver-2026.0.5-linuxathena.zip",
        sha256 = "6d2cef8e930a5199f3c129c60b5790269d1b19e1651392a2af00839b1cca4ca8",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.5/RevLibWpiBackendDriver-2026.0.5-linuxathenastatic.zip",
        sha256 = "f3f2e74590295c8a5f624c2d1f2a3baee1ae6dbd62170dfc018d0fa6fb9e748a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.5/RevLibWpiBackendDriver-2026.0.5-linuxarm32.zip",
        sha256 = "b6db1277dbc3a40d0387dff6ce52258889c797878b78b3d364b832f8c5c46e5f",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.5/RevLibWpiBackendDriver-2026.0.5-linuxarm32static.zip",
        sha256 = "8402204418ff827b22e88fe3b792b8efcf38f6d0b9010d6c630a767ff85d5cc0",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.5/RevLibWpiBackendDriver-2026.0.5-osxuniversal.zip",
        sha256 = "2b095ddfb3852abc82e72af892eb9553c8dfd15cc7b1b97f12da1558141e3b7c",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLibWpi.dylib osx/universal/shared/libREVLibWpi.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.5/RevLibWpiBackendDriver-2026.0.5-osxuniversalstatic.zip",
        sha256 = "828a88b0380332fab5d0fb6ed8c56b6c4cfff5e267a3917453053ea72eba6a69",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
