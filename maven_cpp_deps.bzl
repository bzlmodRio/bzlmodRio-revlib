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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-9/REVLib-cpp-2027.0.0-alpha-9-headers.zip",
        sha256 = "e58cc4dce1418af88b7b7424f8b9f862482fc873b3de6eed27c4678428d2d081",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-9/REVLib-cpp-2027.0.0-alpha-9-windowsx86-64.zip",
        sha256 = "92b52068fb8bda375e688009a2762c7424649ed7203f85a6f153bb37721a2637",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-9/REVLib-cpp-2027.0.0-alpha-9-windowsx86-64static.zip",
        sha256 = "380f9adf29c57a3fb2c81fd15cf81a26369bb3b33a53bb89930f38c9ec152cec",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-9/REVLib-cpp-2027.0.0-alpha-9-linuxarm64.zip",
        sha256 = "763de3e4ad662e08e4d437c8a0454d4ceb43cabdae80ba90a7054046aa27d12e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-9/REVLib-cpp-2027.0.0-alpha-9-linuxarm64static.zip",
        sha256 = "c4bbf9c8ba835dda61ce527074da34b0668b3d4609de537462b0c43e3a211993",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-9/REVLib-cpp-2027.0.0-alpha-9-linuxx86-64.zip",
        sha256 = "d7eac382a3c11222187e7aa0bc9e0b9ff018cba43b66bf3601e5248c97f52fe6",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-9/REVLib-cpp-2027.0.0-alpha-9-linuxx86-64static.zip",
        sha256 = "c2704209fab658c4d6d44a974e6e6f39d72fe9219e11b12f821cd7bd5238dfd0",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxsystemcore",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-9/REVLib-cpp-2027.0.0-alpha-9-linuxsystemcore.zip",
        sha256 = "52d95b43a7630b9b6b08c25aa03d383e62ae8e3f3deb0cea582c4bc33cf44086",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxsystemcorestatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-9/REVLib-cpp-2027.0.0-alpha-9-linuxsystemcorestatic.zip",
        sha256 = "c9c43120838151581077bab8e8aafce83d24fee44ee2575ca77c6a99c8fc5cad",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-9/REVLib-cpp-2027.0.0-alpha-9-osxuniversal.zip",
        sha256 = "41e752f45cb9656b02da8f9a97b1d3d9c9b645fdd6603dca2eb811361d99d539",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLib.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libREVLibDriver.dylib @rpath/libREVLibDriver.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libdatalog.dylib @rpath/libdatalog.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libntcore.dylib @rpath/libntcore.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libtelemetry.dylib @rpath/libtelemetry.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libtunables.dylib @rpath/libtunables.dylib osx/universal/shared/libREVLib.dylib",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2027.0.0-alpha-9/REVLib-cpp-2027.0.0-alpha-9-osxuniversalstatic.zip",
        sha256 = "c821d0a9e15c214f3e1d9efa0ad14a09591a19de6b13249522e7ebf79f83b4ae",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-9/REVLib-driver-2027.0.0-alpha-9-headers.zip",
        sha256 = "d8f10a36d68721d7f4b11555536ead8e958a9d41d963bd1d9b7d38e056dc4c16",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-9/REVLib-driver-2027.0.0-alpha-9-windowsx86-64.zip",
        sha256 = "ae3b1b7fa707873205fc71046d868022fe4da6d8439de4a721dddb8a7e8ee91c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-9/REVLib-driver-2027.0.0-alpha-9-windowsx86-64static.zip",
        sha256 = "953505a60d223eaf95860bd8af9a774b03cb4fb374b452608ce1b6ffbfc2ca3a",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-9/REVLib-driver-2027.0.0-alpha-9-linuxarm64.zip",
        sha256 = "9bb82ace1b57094e82f934b14dc3b9df047eb9799345fda7f215239deb9b2c20",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-9/REVLib-driver-2027.0.0-alpha-9-linuxarm64static.zip",
        sha256 = "8361df5d3d8d562e4b3816fa9b068463a795082bef8714596e60582f677e0ad7",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-9/REVLib-driver-2027.0.0-alpha-9-linuxx86-64.zip",
        sha256 = "c7aa5b8ac2dc8e04394e6941fc6e8cc1482af21a232054e7702e3c88c322dd71",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-9/REVLib-driver-2027.0.0-alpha-9-linuxx86-64static.zip",
        sha256 = "37b20fb9f0906e418ebd304780be5b86f44e8bb5ec62c90d941fdef19c7d3367",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxsystemcore",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-9/REVLib-driver-2027.0.0-alpha-9-linuxsystemcore.zip",
        sha256 = "47e24fbf6edaa3c198dc2a1fa0022fdaba8c1f664f5a31c4f2bb56e62b573c5b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxsystemcorestatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-9/REVLib-driver-2027.0.0-alpha-9-linuxsystemcorestatic.zip",
        sha256 = "c6f4f815ed35ac1825bca77f1adb3ca5f76197923085b2ac9f8896645df3521d",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-9/REVLib-driver-2027.0.0-alpha-9-osxuniversal.zip",
        sha256 = "0bf0e1802006a0ce5efef0e7907009b3ccc7f6de39e2809999c0db324b897e1b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLibDriver.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libdatalog.dylib @rpath/libdatalog.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libntcore.dylib @rpath/libntcore.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libtelemetry.dylib @rpath/libtelemetry.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libtunables.dylib @rpath/libtunables.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libwpiHal.dylib @rpath/libwpiHal.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libwpimath.dylib @rpath/libwpimath.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libwpinet.dylib @rpath/libwpinet.dylib osx/universal/shared/libREVLibDriver.dylib",
            "install_name_tool -change libwpiutil.dylib @rpath/libwpiutil.dylib osx/universal/shared/libREVLibDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2027.0.0-alpha-9/REVLib-driver-2027.0.0-alpha-9-osxuniversalstatic.zip",
        sha256 = "d18e30a75500c0d1cfaa4b75f5b2f2696726ece802d88707333c0728158bb764",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-9/RevLibBackendDriver-2027.0.0-alpha-9-windowsx86-64.zip",
        sha256 = "b8de2d9e66fb1a039515d30bf24c3b89280f7b5af1756ebc512ea94b0d743228",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-9/RevLibBackendDriver-2027.0.0-alpha-9-windowsx86-64static.zip",
        sha256 = "1eea8686402e8b1d16728e9e419a366e7d8f340b7acaf954e9f00e42dd91e0d3",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-9/RevLibBackendDriver-2027.0.0-alpha-9-linuxarm64.zip",
        sha256 = "68dc6f1c7bfd7dbaa57f61e47fd7fa58b896690dbc91d236e9a24c61616aba5f",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-9/RevLibBackendDriver-2027.0.0-alpha-9-linuxarm64static.zip",
        sha256 = "43326ab015ad058cd0f2915c166066bdef9bf65a72e111653b94aec4ea4d627c",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-9/RevLibBackendDriver-2027.0.0-alpha-9-linuxx86-64.zip",
        sha256 = "2842b183374846fa57d6837ecf5a6f278a7d65bead7ddc225f954e490099ea1b",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-9/RevLibBackendDriver-2027.0.0-alpha-9-linuxx86-64static.zip",
        sha256 = "6b568604daa026cefc702925069bdffd367e9464018173e86af0a49a0d62a6e1",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxsystemcore",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-9/RevLibBackendDriver-2027.0.0-alpha-9-linuxsystemcore.zip",
        sha256 = "7b3468cec37f8b9a85ffb136967859b5c2b09c965be7092c11dca0d6c2df7a73",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_linuxsystemcorestatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-9/RevLibBackendDriver-2027.0.0-alpha-9-linuxsystemcorestatic.zip",
        sha256 = "b68160da30efa27bf32fa707123ef72ad942b35246dcb5b7c18b5ffe4dd28892",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-9/RevLibBackendDriver-2027.0.0-alpha-9-osxuniversal.zip",
        sha256 = "f8f600650cffac6a9d35be915687d94f983ea85724ed3f303a9916087da65211",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libBackendDriver.dylib osx/universal/shared/libBackendDriver.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibbackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibBackendDriver/2027.0.0-alpha-9/RevLibBackendDriver-2027.0.0-alpha-9-osxuniversalstatic.zip",
        sha256 = "0b320e65d6362340f06541790b6ea0d26d1dff84f2f7cad235a5f10f4093acde",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-9/RevLibWpiBackendDriver-2027.0.0-alpha-9-windowsx86-64.zip",
        sha256 = "3747e9a060e7717864f48e10a2e23e5f35fba0fb06023b53ac28baf5a1ec8778",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-9/RevLibWpiBackendDriver-2027.0.0-alpha-9-windowsx86-64static.zip",
        sha256 = "d9820d64632400460d0a449f0741b267f7e10bf91bb1513169763554afdbb445",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-9/RevLibWpiBackendDriver-2027.0.0-alpha-9-linuxarm64.zip",
        sha256 = "45e0aa1a322f06e6880d5736f892468b5d83c57535224ff2d95dda6feb2a08f9",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-9/RevLibWpiBackendDriver-2027.0.0-alpha-9-linuxarm64static.zip",
        sha256 = "9da4103029a5d7ac294d0e4d74e9554ad4539f6a446f4ff7158b77c9fc2f37fe",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-9/RevLibWpiBackendDriver-2027.0.0-alpha-9-linuxx86-64.zip",
        sha256 = "895f5ba053baec29555485763d6128c2f9a502ed374d8ba857c5bad8e4689ea4",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-9/RevLibWpiBackendDriver-2027.0.0-alpha-9-linuxx86-64static.zip",
        sha256 = "7dd4fbd5a3171ffd4a7a1369ebdd6739c0c3a6ba28ca8a33bf1c3f998bd31c65",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxsystemcore",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-9/RevLibWpiBackendDriver-2027.0.0-alpha-9-linuxsystemcore.zip",
        sha256 = "941203cc4473e490bdcec00dbac13ac1fb4aab0037d013ca95af664a5880472f",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_linuxsystemcorestatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-9/RevLibWpiBackendDriver-2027.0.0-alpha-9-linuxsystemcorestatic.zip",
        sha256 = "0d91d88f83fa930c85f085173bb6546c607612925202236be6fc424d092a0c34",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-9/RevLibWpiBackendDriver-2027.0.0-alpha-9-osxuniversal.zip",
        sha256 = "7c5c9b4a9847fd42eba3aa48d60f4860cd2661ecb69aab5de7fee09a368ce072",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:shared.BUILD.bazel",
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLibWpi.dylib osx/universal/shared/libREVLibWpi.dylib",
        ],
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlibwpibackenddriver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/RevLibWpiBackendDriver/2027.0.0-alpha-9/RevLibWpiBackendDriver-2027.0.0-alpha-9-osxuniversalstatic.zip",
        sha256 = "27da2c45b28b917bc146168d327628970c403b879f10f1f02cd56f511fadd60f",
        build_file = "@bzlmodrio-revlib//private/cpp/RevLibWpiBackendDriver:static.BUILD.bazel",
    )

deps = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
