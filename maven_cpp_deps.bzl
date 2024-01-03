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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-headers.zip",
        sha256 = "36655f018c199e024d2bf2a5ba2bb1ed184205a25b51e81badd9a27579f7b028",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-windowsx86-64.zip",
        sha256 = "16e32d1dc2ed13b157c35186ab2bd05d3c51043b47044af819456210402f40b0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-windowsx86-64static.zip",
        sha256 = "d9aaf7672f7d69979c6f741f3aa4b3451dc2afbba1c19398011e086feea47d09",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxarm64.zip",
        sha256 = "37793474cfa0c7ebc1b71340dae59acaff21cd7b05bc6d874ba66751e159d519",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxarm64static.zip",
        sha256 = "4234d8acbda53748bc3416fda715f0977dd23eb2e27e8e7de4ae38ad3d88d83e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxx86-64.zip",
        sha256 = "e062e1403d56bda39bd43dc19dad7800c6d6f7bbe526a78b56a2d4783534d24b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxx86-64static.zip",
        sha256 = "3f929a123a301197f979ef4588e4bf10d838fddb0a9eff4c235924fdd3e1ced4",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxathena.zip",
        sha256 = "c39b995992cc0f13e2db23f809d198ee06794928346806f7241de8d0613fd782",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxathenastatic.zip",
        sha256 = "c1c2d830db1632c9398af5322d51f79f27bb9c29000f1dc3103441219a621e11",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxarm32.zip",
        sha256 = "6f8582839af7f3eb9255ac548eba401e46c63d20de324d5271aa158e28fd5902",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxarm32static.zip",
        sha256 = "018ad9b5b00b8761d4afa84cc642967d8ccbe7790378b087e5d61d656108dcde",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-osxuniversal.zip",
        sha256 = "642ddaa4478ade0c5a08f781ad03da3f1ef6891642db0c619206b9c2b2bdb410",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-osxuniversalstatic.zip",
        sha256 = "ccc8cd336bac9d26e75309aa956ca51473fd80bd4a9b071194272e6635bfeab6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-headers.zip",
        sha256 = "9e8721c359ae7bbb3bb26759d5056f744ec8d7881d1f0efc2d8a56e28aed5dc0",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-windowsx86-64.zip",
        sha256 = "82e6e41c93f4bd54908dbe90f50a0798f1da6988521a1c7a291eaaa3d3a2ddd4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-windowsx86-64static.zip",
        sha256 = "909682c1bbcaa9d71d627546faf045cc4df5b5d64917cf658533ed5fd39c18da",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxarm64.zip",
        sha256 = "f75d6fd34f9d8dd4c091078663e108c23ac143ed99e52eabef2b2382bd419887",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxarm64static.zip",
        sha256 = "340c4ab678b5553519d1fdc4e45dfcb4ec11db8b6bd9be5f6e3fdcd39c169035",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxx86-64.zip",
        sha256 = "4887a98e91a569c56203fc11acc83a2c0864c69e34f475997a324b70596c0318",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxx86-64static.zip",
        sha256 = "e4b93b083ce9f7e9d0889100afe40aa5c17e67faeaf279d8c9b85799272285a1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxathena.zip",
        sha256 = "9e0c07e49231f9d04f36cd8c979bbb194e5bb27eaa75ad25d42a93b49c7a066a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxathenastatic.zip",
        sha256 = "14b2ffd4a302d632b4e5db891998aef1bacce590443da79b1cf3e9e56f3b4b87",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxarm32.zip",
        sha256 = "4aa3876f9cc11a7d085e70b56e0a93aed4a173f52095d75df7fcef787c792340",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxarm32static.zip",
        sha256 = "6dd585336ecff5b1176718a93a144edf9dd9c5fa76d29aa39d323b9a780bca54",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-osxuniversal.zip",
        sha256 = "db0433f3fad74d8c5d96f8c619a94d57813cc882ff5a7db0f58b26787d3e87c1",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-osxuniversalstatic.zip",
        sha256 = "712034aa5218ac0aa3b4cbdb078e1834f2219d42fb1328cc370a2afaa1469222",
        build_file_content = cc_library_static,
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
