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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-1/REVLib-cpp-2027.0.0-alpha-1-headers.zip",
        sha256 = "7af675af992bb42446ad0ce7a000fbcbf45f808e4f12a506c5728d444040b548",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-1/REVLib-cpp-2027.0.0-alpha-1-windowsx86-64.zip",
        sha256 = "05b57ac4db9973b63d2b359e35d137a831c4aba98e1b7f6f2732f4deda747601",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-1/REVLib-cpp-2027.0.0-alpha-1-windowsx86-64static.zip",
        sha256 = "b961e49cad732395fff470a0186db5ef95c18f1d468c4165e491bc39390bdd08",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-1/REVLib-cpp-2027.0.0-alpha-1-linuxarm64.zip",
        sha256 = "bffcabb7ebb932d99dc9413e56a67e11ceb47a8d9919dacdb5cf6e577424110c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-1/REVLib-cpp-2027.0.0-alpha-1-linuxarm64static.zip",
        sha256 = "3de4d818e170fee6ed5b5d4ede516903a5c58165d8d63cba7f6301acffbf4263",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-1/REVLib-cpp-2027.0.0-alpha-1-linuxx86-64.zip",
        sha256 = "fb36fafd139d209d0d16ee8d749c4dd4add266a3fc0156f7239cbad1b5690c2b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-1/REVLib-cpp-2027.0.0-alpha-1-linuxx86-64static.zip",
        sha256 = "f0198b8dfb5680c69038754576b6e0dea568c18d9a57004fe3c94d50d10a1743",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxsystemcore",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-1/REVLib-cpp-2027.0.0-alpha-1-linuxsystemcore.zip",
        sha256 = "1905568ce8e3989b714fe387c3fee03b9e626ef65adb36d4620265d10b3644a4",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxsystemcorestatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-1/REVLib-cpp-2027.0.0-alpha-1-linuxsystemcorestatic.zip",
        sha256 = "ef265b50f481ebffe1548576099f8a66a7ccf97b5d9a918d16761e2545c8741b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-1/REVLib-cpp-2027.0.0-alpha-1-linuxarm32.zip",
        sha256 = "ea19a2e4176af2a1f4d8494efb4e23f9558adda41837d9e539caa8aa57517f1e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-1/REVLib-cpp-2027.0.0-alpha-1-linuxarm32static.zip",
        sha256 = "b0569b81a971f979cb234cad415b1c01687f8898688a4e5b6748154f3ce23d85",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-1/REVLib-cpp-2027.0.0-alpha-1-osxuniversal.zip",
        sha256 = "02b31cc4758664b42b83d815534ed1dd2be472f41525bab3f25cda369caa4ea9",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-1/REVLib-cpp-2027.0.0-alpha-1-osxuniversalstatic.zip",
        sha256 = "ed708b38631711989ba3b9142c02bb8d8d75d5bc46f6ebee15316eae81bb8351",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-1/REVLib-driver-2027.0.0-alpha-1-headers.zip",
        sha256 = "6c5d066b2f08e5a7f23d15687f2b54d07398a8da9879d58f92cca148a0e30c93",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-1/REVLib-driver-2027.0.0-alpha-1-windowsx86-64.zip",
        sha256 = "e0378050fe734a3d2af0bf0c36a5097cabf96f4f8047fef5c356926a12aa4bae",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-1/REVLib-driver-2027.0.0-alpha-1-windowsx86-64static.zip",
        sha256 = "cca621835078dda38f423705534ce76ec01680671d2ad69b6ca0ea074d5f4388",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-1/REVLib-driver-2027.0.0-alpha-1-linuxarm64.zip",
        sha256 = "90044b515e07f1d8ddcfed2ed63d399e9858a3460685f8af6498dabf7d7135c3",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-1/REVLib-driver-2027.0.0-alpha-1-linuxarm64static.zip",
        sha256 = "0f135c03b0251e3c4bb33f019aacedf00b18254ab8214b2e3ce7064f14afa08e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-1/REVLib-driver-2027.0.0-alpha-1-linuxx86-64.zip",
        sha256 = "6e888280b6fb3e229f00aa897c42dd3e00e628751e7105883e34341b553811a3",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-1/REVLib-driver-2027.0.0-alpha-1-linuxx86-64static.zip",
        sha256 = "fe65c930d87ee18ed09ead8afabcbdd82ab05216b2549b04a26cefe6af6273c5",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxsystemcore",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-1/REVLib-driver-2027.0.0-alpha-1-linuxsystemcore.zip",
        sha256 = "23526077bc951f66a203efdd7dcf8972d1a55a404d2c4f1c265aab8f11d730b1",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxsystemcorestatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-1/REVLib-driver-2027.0.0-alpha-1-linuxsystemcorestatic.zip",
        sha256 = "0fd24308842d2fdb6578ff5ff4eaf7efde0df650859d921e45a9151082b6bc34",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-1/REVLib-driver-2027.0.0-alpha-1-linuxarm32.zip",
        sha256 = "f77364fdb09c615b0e2de062f8e90a0fd4d00f2dd1b1cc292917ae8488f4d3e5",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-1/REVLib-driver-2027.0.0-alpha-1-linuxarm32static.zip",
        sha256 = "6f72b873e4a15fa30fdfbb27ad2f5ddb66b729ed7047520ed19cc6129fde8283",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-1/REVLib-driver-2027.0.0-alpha-1-osxuniversal.zip",
        sha256 = "9db99e7f30c70edf60f9433282754ca7db71227e6b6b8030a871ecafe8226891",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-1/REVLib-driver-2027.0.0-alpha-1-osxuniversalstatic.zip",
        sha256 = "7bd9ba34935263b8f66f78910b25bc0458a2825d73f44898abad24b79754f67f",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
