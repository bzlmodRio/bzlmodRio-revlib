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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.2/REVLib-cpp-2024.2.2-headers.zip",
        sha256 = "836cca255c2f4b65f67903350eda0172d094b5f03598d8418a4bc04f74564ac7",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.2/REVLib-cpp-2024.2.2-windowsx86-64.zip",
        sha256 = "e1b6ee1e2392220fe4a07247803a0ea7f2a9997de0599e52a9a7ac26c200cd50",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.2/REVLib-cpp-2024.2.2-windowsx86-64static.zip",
        sha256 = "72cd312faa6bf93a12059234ea6078ad967c8736ba8add6d96375b147ad4fd40",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.2/REVLib-cpp-2024.2.2-linuxarm64.zip",
        sha256 = "d690630c99323a619b8b3239aa1f835b8c74243fdc5c104d5a84164a97bc7f86",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.2/REVLib-cpp-2024.2.2-linuxarm64static.zip",
        sha256 = "69d1e0e006560d3c2207144ee4215fea74383beece7f861b48a0bc4bd14437d6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.2/REVLib-cpp-2024.2.2-linuxx86-64.zip",
        sha256 = "ccb54b61c88a4164d32141344cbc22f66de4cd82ddeaf0d84dd209b3db28dd43",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.2/REVLib-cpp-2024.2.2-linuxx86-64static.zip",
        sha256 = "d62cc1851f7c1db840c28881b126a9b3afa0989a7da04a34693ff015a3b91871",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.2/REVLib-cpp-2024.2.2-linuxathena.zip",
        sha256 = "1c6ce49664811561fad2b7925db8258fa28e1bd27619e4b635f8dc33d94d9feb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.2/REVLib-cpp-2024.2.2-linuxathenastatic.zip",
        sha256 = "2b184bec630473fe24cfed33763ecfdc35ac564c6e13066ec588942bc88601d3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.2/REVLib-cpp-2024.2.2-linuxarm32.zip",
        sha256 = "16648d717d311ddd784772c38494cf33b2375d86b844e2fa4840a7f13bd00766",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.2/REVLib-cpp-2024.2.2-linuxarm32static.zip",
        sha256 = "28a3d41f9fd10cbdd6d7e9d721334387dc96c2b876dd13a9a02055e81b1019ff",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.2/REVLib-cpp-2024.2.2-osxuniversal.zip",
        sha256 = "558460ca155140a5b2ca776bcb537416cf2712c8d0c642c68dc03ad49a13a1d5",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.2/REVLib-cpp-2024.2.2-osxuniversalstatic.zip",
        sha256 = "5b79b982b3bc0a9077e2f6f66e94ff8e9b306e03416f4d803482a9f4eff3f292",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.2/REVLib-driver-2024.2.2-headers.zip",
        sha256 = "6e4d0fcf55fd2cc2b396dd7ea947f9e78044e6f6f9f6b958c11269b0137b32af",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.2/REVLib-driver-2024.2.2-windowsx86-64.zip",
        sha256 = "bc70f6335fedd3632a5a7709a73165e2ef283ffca3db1a44ad327871502cf2d5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.2/REVLib-driver-2024.2.2-windowsx86-64static.zip",
        sha256 = "8982e407f4b73ec703eaef0e5c721c106a08d9e21482c3c55cbdb3d65690fcd7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.2/REVLib-driver-2024.2.2-linuxarm64.zip",
        sha256 = "59c1995c15669854da2e67ae9d2922d0ecf508157383006bb7688342263d5ea7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.2/REVLib-driver-2024.2.2-linuxarm64static.zip",
        sha256 = "f88356a1e6f3fb7f44f54daa8baa1d87c91bacbb61ce1247932322c2e22f24d5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.2/REVLib-driver-2024.2.2-linuxx86-64.zip",
        sha256 = "1df38f9e525acdd507ea21fb1bced1620b610ed62011deee961a30871339bb72",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.2/REVLib-driver-2024.2.2-linuxx86-64static.zip",
        sha256 = "27804d2acb31d2ba02d2e9b3b3de9e681a0185f323063b2afff3c63048c2b5df",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.2/REVLib-driver-2024.2.2-linuxathena.zip",
        sha256 = "6b44177ecfdea22d70180a02c14ba1433e94152b9ce1ac30a80737990bf0df02",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.2/REVLib-driver-2024.2.2-linuxathenastatic.zip",
        sha256 = "c241e63fcf8fe0d4df5056079649109327a07396dbf18b34cefe1e27b2d2f185",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.2/REVLib-driver-2024.2.2-linuxarm32.zip",
        sha256 = "c87f436e208b386611b2e641cd80f13e48d3df9eb06b0d781a8671ee6be0481a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.2/REVLib-driver-2024.2.2-linuxarm32static.zip",
        sha256 = "f5b38d64d654804c639b57402603f9bed3dd6146532bb1996b614bb2a69a3f6c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.2/REVLib-driver-2024.2.2-osxuniversal.zip",
        sha256 = "7b5e345f053e06d835e210bf0923a2da9dd73127a9283d2aba62cb37862867b8",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.2/REVLib-driver-2024.2.2-osxuniversalstatic.zip",
        sha256 = "59033ace08416fca32fe080ccbb7a5ca1200eb6e6b07cd85d455c66e2dd52025",
        build_file_content = cc_library_static,
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
