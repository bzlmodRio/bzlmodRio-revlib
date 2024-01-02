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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.0/REVLib-cpp-2024.1.0-headers.zip",
        sha256 = "88ea17243981bd71db3e2c3166159cf7d44f7935bffa68fa6b00864a24d3c8ba",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.0/REVLib-cpp-2024.1.0-windowsx86-64.zip",
        sha256 = "e2e0f31e74ded5629491ae35837d8da888400f31ac4d5073da1efbfa2c0bdebd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.0/REVLib-cpp-2024.1.0-windowsx86-64static.zip",
        sha256 = "3cb8579fbe82e1f1b9bca86a439318e79bf69340d2703195158bac70129cdd5f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.0/REVLib-cpp-2024.1.0-linuxarm64.zip",
        sha256 = "b18f9a3170ac6c76bf96d7683a37750f071e804c60a50862993da56eba34640b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.0/REVLib-cpp-2024.1.0-linuxarm64static.zip",
        sha256 = "520717399ddc055c22e1ab7fc5cf2938f1a10fd28385bdf082db0d69691b3141",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.0/REVLib-cpp-2024.1.0-linuxx86-64.zip",
        sha256 = "a570d2a429d166f036747e385ca545979f8b1843c20ba59c70a0c79ccd963b33",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.0/REVLib-cpp-2024.1.0-linuxx86-64static.zip",
        sha256 = "d9c554beb43d8b407d417e11401ecab27da8837779fa8ece88ccca6308448cef",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.0/REVLib-cpp-2024.1.0-linuxathena.zip",
        sha256 = "521773ff3a0b3a5f07a4b4914d18b414f4c8e0c08a83944919001780ae9d336d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.0/REVLib-cpp-2024.1.0-linuxathenastatic.zip",
        sha256 = "e6a033b3f1581f6a09010ed00c74755ae4caf1db3b449ab2129b7baa4ca075b0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.0/REVLib-cpp-2024.1.0-linuxarm32.zip",
        sha256 = "57faf810042349d41b648d9bcf20561daf358ec6f875f48e4d8c3f9c674da97d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.0/REVLib-cpp-2024.1.0-linuxarm32static.zip",
        sha256 = "a6672c674ddda5b320d93cbbcbed9b59d51fac4262e61ca2023395cf8054670b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.0/REVLib-cpp-2024.1.0-osxuniversal.zip",
        sha256 = "a859ac03495e274c9ea876de0e39fa6b2936119309d335a5816fb981b333a69c",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.0/REVLib-cpp-2024.1.0-osxuniversalstatic.zip",
        sha256 = "dc8c18a044af7b770ee5dd833b2f0c4de4007a8c85322676f64514201ac93c2c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.0/REVLib-driver-2024.1.0-headers.zip",
        sha256 = "54a077eed4ea07fd1496a6a76bcda97dcd10a13d5cb35d5ba9320d3f5669154d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.0/REVLib-driver-2024.1.0-windowsx86-64.zip",
        sha256 = "43174c108c8d4f84d82deebe051c1e98c34758561f00a50d05ade907a19c2eec",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.0/REVLib-driver-2024.1.0-windowsx86-64static.zip",
        sha256 = "354d8b4087824f4845e4452a47cc27ee6eedfa6a6348ee309fc75ccb164b9566",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.0/REVLib-driver-2024.1.0-linuxarm64.zip",
        sha256 = "6ec02631dfe8f1afb4bf45545a02acc9e3b1ee8ada9ca91ec05ec80f27af3f10",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.0/REVLib-driver-2024.1.0-linuxarm64static.zip",
        sha256 = "d625b1a38d77175f624c81da66d2ec9ac02bb750091e4f6952d51719f0ed6f87",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.0/REVLib-driver-2024.1.0-linuxx86-64.zip",
        sha256 = "21740a1cbc8c5af08b513dcb952abbb3924ad6900f70015787ea471203556046",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.0/REVLib-driver-2024.1.0-linuxx86-64static.zip",
        sha256 = "b5feb66165cf3a977f70c7af450ebabc0c4f8a5b9c1e3b832989bda993b6aafa",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.0/REVLib-driver-2024.1.0-linuxathena.zip",
        sha256 = "7fc7c880c0bc6aaaf44e18c83b00bb9e82621d07e5862a31d112e18971f541fb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.0/REVLib-driver-2024.1.0-linuxathenastatic.zip",
        sha256 = "aff0902aec15a09bab89fe6cb8757c6092d92d9ba063874500090ca36f13b8d8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.0/REVLib-driver-2024.1.0-linuxarm32.zip",
        sha256 = "3bb3a4c963058e1f16172edb464eb6cc83c507264e4430a90db3b0950287dc24",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.0/REVLib-driver-2024.1.0-linuxarm32static.zip",
        sha256 = "2389e32581e52ed767593296a42fee9b3dd82f893cc47455c910f5f7255a43b8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.0/REVLib-driver-2024.1.0-osxuniversal.zip",
        sha256 = "e536661f890662a3482a3f2cdb04924224c242c0a0dc992a2499a23987c2763c",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.0/REVLib-driver-2024.1.0-osxuniversalstatic.zip",
        sha256 = "d0d0dc6b0b7b6127ac69bd9724e3d7ad09f728018efb294577a226d07f2c3de9",
        build_file_content = cc_library_static,
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
