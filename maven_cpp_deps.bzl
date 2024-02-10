load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

filegroup_all = """filegroup(
     name = "all",
     srcs = glob(["**"]),
     visibility = ["//visibility:public"],
 )
 """

cc_library_headers = """cc_library(
    name = "headers",
    hdrs = glob(["**"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)
"""

cc_library_sources = """filegroup(
     name = "sources",
     srcs = glob(["**"]),
     visibility = ["//visibility:public"],
 )
 """

cc_library_static = """

cc_library(
    name = "static_libs",
    srcs = glob(["**/*.lib", "**/*.a"]),
    visibility = ["//visibility:public"],
)
"""

cc_library_shared = """
JNI_PATTERN=[
    "**/*jni.dll",
    "**/*jni.so*",
    "**/*jni.dylib",
    "**/*_java*.dll",
    "**/lib*_java*.dylib",
    "**/lib*_java*.so",
]

static_srcs = glob([
        "**/*.lib",
        "**/*.a"
    ],
    exclude=["**/*jni.lib"]
)
shared_srcs = glob([
        "**/*.dll",
        "**/*.so*",
        "**/*.dylib",
    ],
    exclude=JNI_PATTERN + ["**/*.so.debug"]
)
shared_jni_srcs = glob(JNI_PATTERN, exclude=["**/*.so.debug"])

filegroup(
    name = "static_libs",
    srcs = static_srcs,
    visibility = ["//visibility:public"],
)

filegroup(
    name = "shared_libs",
    srcs = shared_srcs,
    visibility = ["//visibility:public"],
)

filegroup(
    name = "shared_jni_libs",
    srcs = shared_jni_srcs,
    visibility = ["//visibility:public"],
)
"""

def __setup_bzlmodrio_revlib_cpp_dependencies(mctx):
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.1/REVLib-cpp-2024.2.1-headers.zip",
        sha256 = "7d47dbf709c13d96ad4ebc895fb087ab7a13a7a76c6909d882db2cd908e3cfb2",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.1/REVLib-cpp-2024.2.1-windowsx86-64.zip",
        sha256 = "4aec5ca23b8c43c48b7de552c5f19eaa409a7dc353936985fa23f2f50db5ff63",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.1/REVLib-cpp-2024.2.1-windowsx86-64static.zip",
        sha256 = "f6c8ed438c05d204fbae81c0b2bd060135ad25845c5fb96043d45dd45e282659",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.1/REVLib-cpp-2024.2.1-linuxarm64.zip",
        sha256 = "9f474b980cfce0ef9d7b7e8f8e729e243ea4338bfc75cecd5806ef4650560b05",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.1/REVLib-cpp-2024.2.1-linuxarm64static.zip",
        sha256 = "5c33f893d6710d5a09d57ae457ed2f9915836645713c8fe181de4dc2f1d7aaf7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.1/REVLib-cpp-2024.2.1-linuxx86-64.zip",
        sha256 = "993513254e131251c467555b2c52f604d0d1f289ac4521d3ce755a07253a5147",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.1/REVLib-cpp-2024.2.1-linuxx86-64static.zip",
        sha256 = "836b9e7c2fdbf942e9ee298561bb5dd0bcaa9a9bee28240c82b3b7dc0350b6eb",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.1/REVLib-cpp-2024.2.1-linuxathena.zip",
        sha256 = "d784c75621adab44f22a1a379f5738107fea7ad836ba9204d888737a1427e38b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.1/REVLib-cpp-2024.2.1-linuxathenastatic.zip",
        sha256 = "6e862271aa9bc566ed3586245c55820e460f64ad22ec797e2a9324d0368b1c91",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.1/REVLib-cpp-2024.2.1-linuxarm32.zip",
        sha256 = "f79e57d4840242a1e9569f004e31afa0c92f1e3e9f55c48f5bc4cefdf816cd6e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.1/REVLib-cpp-2024.2.1-linuxarm32static.zip",
        sha256 = "06d87cd3f2786c0cc8fff2f28d9090994f3e7dc996421e005d7a525ad5fbb38f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.1/REVLib-cpp-2024.2.1-osxuniversal.zip",
        sha256 = "5f50db0f5f552751a3ae635a639c97a875e863f06fad636b0738757cd0b56a55",
        build_file_content = cc_library_shared,
        patch_cmds = [
            "install_name_tool -id @rpath/libREVLib.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libREVLibDriver.dylib @rpath/libREVLibDriver.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libcameraserver.dylib @rpath/libcameraserver.dylib osx/universal/shared/libREVLib.dylib",
            "install_name_tool -change libcscore.dylib @rpath/libcscore.dylib osx/universal/shared/libREVLib.dylib",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.1/REVLib-cpp-2024.2.1-osxuniversalstatic.zip",
        sha256 = "a6a3dbb63bc4e4fb341e124f2c7e678e0403f5f2f1a6d907501319533e61cdb9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.1/REVLib-driver-2024.2.1-headers.zip",
        sha256 = "5f87f4f123aba852b3a8ff80a55c9bf9c06f0f2ec054e404af4ab6b240aa4a60",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.1/REVLib-driver-2024.2.1-windowsx86-64.zip",
        sha256 = "1164ce1b428612749fdc559c00365da6e95efd512595dbda5edfb93fca22d621",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.1/REVLib-driver-2024.2.1-windowsx86-64static.zip",
        sha256 = "bcfd21245aca2dbf82204f8bf93711ddaa2d0e24a04a0580d7aa7d802a9b33fc",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.1/REVLib-driver-2024.2.1-linuxarm64.zip",
        sha256 = "57cd03b7b1257b8ecb04be197f349de87ccb6aa1d5392ede7011d6415493c16b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.1/REVLib-driver-2024.2.1-linuxarm64static.zip",
        sha256 = "ea540a9f1da50e7dfe098233471c45cbdeb0bcd373c03023ea32cc1d141b8315",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.1/REVLib-driver-2024.2.1-linuxx86-64.zip",
        sha256 = "0a3ebbd0ee4a927884d779220a364f1158b5f12f521f89b47bf667ff2d186a98",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.1/REVLib-driver-2024.2.1-linuxx86-64static.zip",
        sha256 = "adc0156a042a546d0bfc6c86c0b59cf64a49185c574166da7df09c582ebaa116",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.1/REVLib-driver-2024.2.1-linuxathena.zip",
        sha256 = "84c469192619347cf924b51cc6900df49eaf0832362828dd8079cf8a7bbe3af4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.1/REVLib-driver-2024.2.1-linuxathenastatic.zip",
        sha256 = "fa2706ff04c716ced89898fa7d4a70b47f0f7a630d76e30889113415266e06db",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.1/REVLib-driver-2024.2.1-linuxarm32.zip",
        sha256 = "f1856f35b1dff2263ac7d357a07c778cd027c690c98593da9628de0937786304",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.1/REVLib-driver-2024.2.1-linuxarm32static.zip",
        sha256 = "8d29489abb7c6dfe97f5cd747e9f792fe7a597ba399aae47c8cbbc90dc00eec0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.1/REVLib-driver-2024.2.1-osxuniversal.zip",
        sha256 = "842ea374e14f23303cda21aaad2474cdf168165f8ed5b14380e52d0b920723ab",
        build_file_content = cc_library_shared,
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.1/REVLib-driver-2024.2.1-osxuniversalstatic.zip",
        sha256 = "112762c4d233495b40690b37b5b9b68a14654e47ee628567bcc5683f1ea336d1",
        build_file_content = cc_library_static,
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
