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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.0/REVLib-cpp-2024.2.0-headers.zip",
        sha256 = "077658fbf48bd236b20355bc1272dd3a46de38d6c090e83dafa47c2785b54df3",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.0/REVLib-cpp-2024.2.0-windowsx86-64.zip",
        sha256 = "1a85bf060a3c35664bbf7b0d1d4a923bc06835415b4776f6c703c5aca1d24858",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.0/REVLib-cpp-2024.2.0-windowsx86-64static.zip",
        sha256 = "751c1bac5faa0cfca84b55a2d0d8e3728e6e525f6346f036f43339695acd34b1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.0/REVLib-cpp-2024.2.0-linuxarm64.zip",
        sha256 = "8150de7c37a03efc897551174bf25d5a76f45b45a53699f20e7c2fa2673859e7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.0/REVLib-cpp-2024.2.0-linuxarm64static.zip",
        sha256 = "c75b541b9d9f9a7ee7bfbd699b0fc529ac0ab59ef5d8192fa8f3836d93a362e1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.0/REVLib-cpp-2024.2.0-linuxx86-64.zip",
        sha256 = "5660c49b62f8f52322a6563658721940b235779cb2be2e0f261ce330d41a14c8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.0/REVLib-cpp-2024.2.0-linuxx86-64static.zip",
        sha256 = "294fd00b5d1ed6b169e999f2e186ed2671e26d23817a65462a5291f0edd31bf1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.0/REVLib-cpp-2024.2.0-linuxathena.zip",
        sha256 = "4c2d09551784e6d4479619c09a772755e090871f04f4fd21cd3ade69f364f659",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.0/REVLib-cpp-2024.2.0-linuxathenastatic.zip",
        sha256 = "41f7544f75d3a63f85b47a9b7d9a554edbdc6072d18106e0eff14e41d9eb8227",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.0/REVLib-cpp-2024.2.0-linuxarm32.zip",
        sha256 = "299f90f2eed23d2a090aa3860f16aba428e34856d5d1091f87810e97dfe38d75",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.0/REVLib-cpp-2024.2.0-linuxarm32static.zip",
        sha256 = "a9419de5a1f9c72574c5f4c69601d30139cbbd05329ef10e80eeae61d3834b46",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.0/REVLib-cpp-2024.2.0-osxuniversal.zip",
        sha256 = "c1f3c41bb8184a1ed8e2786dccffe804c33f91616207dddbdd24735e5266a665",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.0/REVLib-cpp-2024.2.0-osxuniversalstatic.zip",
        sha256 = "b3c9679876858e2cfc9cc4fbff2880fcc5baca3b0b1bf43c591b939c4b1970c3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.0/REVLib-driver-2024.2.0-headers.zip",
        sha256 = "6f933a622b3310f7bf1023c0a198671aeba807a5e1babfaaaa141cb1dbc12f60",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.0/REVLib-driver-2024.2.0-windowsx86-64.zip",
        sha256 = "3238891f02759bc120ab801f836fc8f973bcec3fffdeacf69bb40371e11fbb0f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.0/REVLib-driver-2024.2.0-windowsx86-64static.zip",
        sha256 = "7a374d79a260a799d6a689f7110ac2ca80d71f86b84a38266bff32c93a28a18f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.0/REVLib-driver-2024.2.0-linuxarm64.zip",
        sha256 = "d7ab5c8786a043278f105e8632af2e857194b199498f25e6d5972e5689c78713",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.0/REVLib-driver-2024.2.0-linuxarm64static.zip",
        sha256 = "4af03d260291019eaf5500e83582f6f994c5260944f0bd005f2970f66ad931e1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.0/REVLib-driver-2024.2.0-linuxx86-64.zip",
        sha256 = "c53bacfb06df3745730f6d32cfa01ade6eaa501c94e37c9c1d64317d581baed2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.0/REVLib-driver-2024.2.0-linuxx86-64static.zip",
        sha256 = "159993f5e5fa136bbe1ee0ddc1dd7f547c8cbd62de2a6506074270257e944b99",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.0/REVLib-driver-2024.2.0-linuxathena.zip",
        sha256 = "6c40665a07841f76d3bb15aa49e67cc6bbd4cbdc169335d96cf43abd4f65d636",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.0/REVLib-driver-2024.2.0-linuxathenastatic.zip",
        sha256 = "ecac63c11c8ef4eeeb79fc481e24da0bb2bf2cb527977be2736c06301ccabdcf",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.0/REVLib-driver-2024.2.0-linuxarm32.zip",
        sha256 = "4bce1c1fa64cf6aefbfc3d81ef99cff84f6aa8db506eb390716a34aa28440b84",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.0/REVLib-driver-2024.2.0-linuxarm32static.zip",
        sha256 = "954289f2349e7e56eb1d89e17c1bebf58f7ebad40d718a7579e6c88257f9c6b6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.0/REVLib-driver-2024.2.0-osxuniversal.zip",
        sha256 = "60feecbc00d83c2a39c83ebfb21f640b2cb4a3df059af6212d186f8074d19964",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.0/REVLib-driver-2024.2.0-osxuniversalstatic.zip",
        sha256 = "9fc2aabdafb2c1e4b657086d36fe317e07ea8f644118b65c1ffe14a5a45e663d",
        build_file_content = cc_library_static,
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
