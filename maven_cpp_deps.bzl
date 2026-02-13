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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.2/REVLib-cpp-2026.0.2-headers.zip",
        sha256 = "35af3eaa942a717b3998b75a7590fb1d6aa3d3f47ae1e943ea53cdca9e162cde",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.2/REVLib-cpp-2026.0.2-windowsx86-64.zip",
        sha256 = "821c1a46ec6a2bd5606d7e1534288914b5b3b0abfaa27bc7397e9a08f754a1b4",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.2/REVLib-cpp-2026.0.2-windowsx86-64static.zip",
        sha256 = "114c7f89957700054831afae6ecfa287b308b8c48257d9db7f47e9e240f33c66",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.2/REVLib-cpp-2026.0.2-linuxarm64.zip",
        sha256 = "c93a222a332edcba0cd50b2e031375edd30868609921b33d2a2e99645ecffdce",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.2/REVLib-cpp-2026.0.2-linuxarm64static.zip",
        sha256 = "4050eb3471d9968e41214de8b701e1c6529de33a160bb9445f944546faa11dbc",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.2/REVLib-cpp-2026.0.2-linuxx86-64.zip",
        sha256 = "4bc76cb3c9f99ede955cc26e2f0d0bf8991584ff4b1d9fcdca380df81f2b5989",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.2/REVLib-cpp-2026.0.2-linuxx86-64static.zip",
        sha256 = "b4f1cac850ed5ea4c28197a683d71dbed29bd8495ee5e07ff0813956f07f888c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.2/REVLib-cpp-2026.0.2-linuxathena.zip",
        sha256 = "197e0298cef38720fb80121d0ed56820926194799e39007c9d83ed886bcd4c03",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.2/REVLib-cpp-2026.0.2-linuxathenastatic.zip",
        sha256 = "1312c277aee0c7411145b0a8f582637808e2b5d222e177cd5fa972e1d8aa0074",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.2/REVLib-cpp-2026.0.2-linuxarm32.zip",
        sha256 = "d93316803d413d15296eb202735b2b2b41574437c2cbca67e8710c77250c1615",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.2/REVLib-cpp-2026.0.2-linuxarm32static.zip",
        sha256 = "7f589b7632d09245979bffe70de8e3c27ddab836caf418e6901dbf67609a990d",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.2/REVLib-cpp-2026.0.2-osxuniversal.zip",
        sha256 = "7dd7c09a9b01df210bdf2cc5b5bb7cf50da42ec13bcd7c430c1b2bdc9ff35bae",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2026.0.2/REVLib-cpp-2026.0.2-osxuniversalstatic.zip",
        sha256 = "7951d401a6195155084c86e796006aef6344177ec09bd1380919eac4792eb18c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.2/REVLib-driver-2026.0.2-headers.zip",
        sha256 = "7d308df145588c3c080cbed76221ddd880bd79c0e4ca80f45f10d62680712faf",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.2/REVLib-driver-2026.0.2-windowsx86-64.zip",
        sha256 = "d37bc0bfc6e5b6e4798380e50c786f6287b371245d7e06cc099e826445780516",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.2/REVLib-driver-2026.0.2-windowsx86-64static.zip",
        sha256 = "b205f07865114f6c23cc022af810d51837a9ab77856296d5a775a3790187ffed",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.2/REVLib-driver-2026.0.2-linuxarm64.zip",
        sha256 = "6e74b56c4fd92bb8184db787fdd332c8fdfe64550360bb1569f41798ec432b27",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.2/REVLib-driver-2026.0.2-linuxarm64static.zip",
        sha256 = "958455e6b2f6c2f3cb73f66528285ec077c2e77f86a65be70085634616a65276",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.2/REVLib-driver-2026.0.2-linuxx86-64.zip",
        sha256 = "a2f98508c489e915193c0abe8ddb3000e278290d6fd9bef5c95bb2da56aee0ae",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.2/REVLib-driver-2026.0.2-linuxx86-64static.zip",
        sha256 = "a48b647ea700463332a78d36bc21cbaf040ad4df2a0d1533642ab697dda26e74",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.2/REVLib-driver-2026.0.2-linuxathena.zip",
        sha256 = "3c542eedd1b74ff33640f6f911a2866ded004ca5821cb9ebd5275198df66da3f",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.2/REVLib-driver-2026.0.2-linuxathenastatic.zip",
        sha256 = "f994db66a322cc02f2d9002c5bc7fda82f0d9dbd5dfb0ac058e92238cd7890ec",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.2/REVLib-driver-2026.0.2-linuxarm32.zip",
        sha256 = "1046fdb31773dbfb48c0b1c81f057986f88b3988e745e8829a656478731e823f",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.2/REVLib-driver-2026.0.2-linuxarm32static.zip",
        sha256 = "6d9336b0807f23be546c6516646c9a6383ebe7bfb29d5136beb87646aa16b4f8",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.2/REVLib-driver-2026.0.2-osxuniversal.zip",
        sha256 = "e1aac0ca5df2a3eda43ed44aab7ae29e13dd8420269652baadd9ed3bd20bcbb9",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2026.0.2/REVLib-driver-2026.0.2-osxuniversalstatic.zip",
        sha256 = "74ea79591d888a9afa0df88c3dc36fab2c051bb02d55043701943d0f9f897a76",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.2/RevLibBackendDriver-2026.0.2-windowsx86-64.zip",
        sha256 = "9e3dc503523ccb4b10a5f2a8edc37fcee87bae0069b430b866423b8ed8ad62e9",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.2/RevLibBackendDriver-2026.0.2-windowsx86-64static.zip",
        sha256 = "4487991ae5c9d98e32d23d4661ba3ff26de6bfdbd88357e8f75097fbd32e84e6",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.2/RevLibBackendDriver-2026.0.2-linuxarm64.zip",
        sha256 = "b49ddf3144e2ce4b46d16dfd5d9af3ed81b990a210ce3dc3ecfda50fde449ccc",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.2/RevLibBackendDriver-2026.0.2-linuxarm64static.zip",
        sha256 = "ff78c06f7bf81dfa364f4ca4b466e779882c5f57f74f05c4b5c1cb6c864baad4",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.2/RevLibBackendDriver-2026.0.2-linuxx86-64.zip",
        sha256 = "0b9ca3294dd4ea970fbfcdfc888afc20521d1c777263c3351570c4ea7bcf50cf",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.2/RevLibBackendDriver-2026.0.2-linuxx86-64static.zip",
        sha256 = "23d07c068c79fdb2a0008fbe7b5ccc7285b6a5d0a3d0ebf0ee95fe6f20a045fc",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.2/RevLibBackendDriver-2026.0.2-linuxathena.zip",
        sha256 = "b605d579d8f5e744e8e80391660c282eac87c3ebd8e8217300229fcc35b0fa6b",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.2/RevLibBackendDriver-2026.0.2-linuxathenastatic.zip",
        sha256 = "91d8181e22f3c9f0313029d4f9029fd80af678f81a876cd7b06b47fb31256a37",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.2/RevLibBackendDriver-2026.0.2-linuxarm32.zip",
        sha256 = "46189f7b1d3ff82c5bdc1478837f32ba68e2c9696c6b42efda814d67390f55f9",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.2/RevLibBackendDriver-2026.0.2-linuxarm32static.zip",
        sha256 = "c761254be3fc409ae33d4f935e8baf357742315fd09b4e1e15c5b3f01330f9c2",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.2/RevLibBackendDriver-2026.0.2-osxuniversal.zip",
        sha256 = "58a099c47406803eb23f47267aa6cff5cbd0479a4bf8cf8e6c04d3988ce3e116",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libBackendDriver.dylib osx/universal/shared/libBackendDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2026.0.2/RevLibBackendDriver-2026.0.2-osxuniversalstatic.zip",
        sha256 = "a27c89d676b5168e77e189c0bf9f334c0c5d346bf9bb8de2b0ec6c608191b7bd",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.2/RevLibWpiBackendDriver-2026.0.2-windowsx86-64.zip",
        sha256 = "c9ac8b45820f3ebb61acb19930e271b649bcc92f6cdd4a51feb7416b92660c1f",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.2/RevLibWpiBackendDriver-2026.0.2-windowsx86-64static.zip",
        sha256 = "ab6ce1652b103fe6316f4450464305f407a962961063ea2ad19bc01c97292218",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.2/RevLibWpiBackendDriver-2026.0.2-linuxarm64.zip",
        sha256 = "fa49c4fce45ce3371fc52b80e5ce9a75a78b5619a84cff79cd05390eb0974c4a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.2/RevLibWpiBackendDriver-2026.0.2-linuxarm64static.zip",
        sha256 = "d307b516212184bab017c253c68b5f6e34d7e1f5863420ac5d4f9415be8a0384",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.2/RevLibWpiBackendDriver-2026.0.2-linuxx86-64.zip",
        sha256 = "96f3962d18cae98e6f01130e101129836a2a3601dde93ecfeb4aff85a07be546",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.2/RevLibWpiBackendDriver-2026.0.2-linuxx86-64static.zip",
        sha256 = "ebfa8f7fb7d564c5cbe14657e00d566c30deb6fb8ca1362dfb0dc01b3452b175",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.2/RevLibWpiBackendDriver-2026.0.2-linuxathena.zip",
        sha256 = "a7a421de9fa28c5abcb8b8c407b44dd1749161a3133e13edd1def53d6af13c76",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.2/RevLibWpiBackendDriver-2026.0.2-linuxathenastatic.zip",
        sha256 = "f8c05d9c78be914ce816eac0c43ff582063b07fbfd397fde6cf81d17b8e363e0",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.2/RevLibWpiBackendDriver-2026.0.2-linuxarm32.zip",
        sha256 = "df8a1781554aff21f4f3f920398575e3e2ef600d4fad9df3a9783b1d030fdcb9",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.2/RevLibWpiBackendDriver-2026.0.2-linuxarm32static.zip",
        sha256 = "0e862a4305fb674bb6efc47810b2c5fb32af3c993647e0d12db3de96c945b78b",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.2/RevLibWpiBackendDriver-2026.0.2-osxuniversal.zip",
        sha256 = "7977ff7458ab71688cb52a7924a89b6f6dd438f408b9860d5662b15db661f31a",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLibWpi.dylib osx/universal/shared/libREVLibWpi.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2026.0.2/RevLibWpiBackendDriver-2026.0.2-osxuniversalstatic.zip",
        sha256 = "fe20a21d17559379262c7c7b974f82791c55eef21da2db2608e041fca9be0742",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
