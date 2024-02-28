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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.3/REVLib-cpp-2024.2.3-headers.zip",
        sha256 = "02d88749ca2405ff259814f6a195bae23eb54f1ead30490afbec188a9f41c2d3",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.3/REVLib-cpp-2024.2.3-windowsx86-64.zip",
        sha256 = "158832aac29c794e592380bc302b955ca8066b6a0210768822a91d7a079fabc0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.3/REVLib-cpp-2024.2.3-windowsx86-64static.zip",
        sha256 = "043c1cf0bfa9e8f76763047547e55af157ab7f287c21b2633dbf8415acf55896",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.3/REVLib-cpp-2024.2.3-linuxarm64.zip",
        sha256 = "4ed95cc141b11b790160f31d310a9401fe84d5b4cb3db8dddd511ce50289d457",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.3/REVLib-cpp-2024.2.3-linuxarm64static.zip",
        sha256 = "4077b952364fa4a984b25806d6590995ffd7ce9c1baf5f4ff473fd925e50974a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.3/REVLib-cpp-2024.2.3-linuxx86-64.zip",
        sha256 = "abf853ac75da05fb447633297044a8c423d1f032108963ff34530c5245742ebb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.3/REVLib-cpp-2024.2.3-linuxx86-64static.zip",
        sha256 = "6931bdf343e1ff9f004f05be94d57bc53269e2dca449a721ca903ddee84cad6b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.3/REVLib-cpp-2024.2.3-linuxathena.zip",
        sha256 = "25e347e6b3112b5bd2527cf5406a6314fe976dad3edc45dbf0db9f35c7809ee7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.3/REVLib-cpp-2024.2.3-linuxathenastatic.zip",
        sha256 = "3671ad8c680617f75e409f0ea983fe12734e0e7f2e5c73b3e28d91def63b5a47",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.3/REVLib-cpp-2024.2.3-linuxarm32.zip",
        sha256 = "8dc4b20978a2fad64a8b3a844610ce5bf5450477b5d28d810f6ca40ee204a8f1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.3/REVLib-cpp-2024.2.3-linuxarm32static.zip",
        sha256 = "2f0f3779aababbae3a2885eac4dd37d791368efa1ae97205c4541e257bbdce01",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.3/REVLib-cpp-2024.2.3-osxuniversal.zip",
        sha256 = "ae2169bb7012bd3cf65ba1bd6b06e981737a234f4f31fb749b9366d9ec552914",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.2.3/REVLib-cpp-2024.2.3-osxuniversalstatic.zip",
        sha256 = "d3893da0a1dc93f981b5a2f331a288505c39cd50573aef98ca8f71c0d4cc6ede",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.3/REVLib-driver-2024.2.3-headers.zip",
        sha256 = "e0965f44d3c3ed5457f598908a9247ccb9745b8a7206622e81dfd034e8e8cafc",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.3/REVLib-driver-2024.2.3-windowsx86-64.zip",
        sha256 = "e92bbe372237f74f10f95796df56c4abc0c39d9a71c0aa4451890fe2fd028b3a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.3/REVLib-driver-2024.2.3-windowsx86-64static.zip",
        sha256 = "9d82e1b4cbe4434ab6608f8afd08f505b939868723da252c2af3df1a4399c2a5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.3/REVLib-driver-2024.2.3-linuxarm64.zip",
        sha256 = "cb93e3b1159d2c488a7824048f8d9f54e589adb38fca2bad5023c54557d8f916",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.3/REVLib-driver-2024.2.3-linuxarm64static.zip",
        sha256 = "123c22bdfc9003a7b741a3f32d2a336c5cdb45971239aa292ed55ad99e20f199",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.3/REVLib-driver-2024.2.3-linuxx86-64.zip",
        sha256 = "88ca0087a54f7a80ea62b0c0902c462047f104a7f20e9a2a59d66e1c73692380",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.3/REVLib-driver-2024.2.3-linuxx86-64static.zip",
        sha256 = "235f929c98fe23823d8e6f77c7db3070018c77f8ddfd6822ef367842c5357a72",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.3/REVLib-driver-2024.2.3-linuxathena.zip",
        sha256 = "aea4927b73198e4d14a10d73284c500e890f0a18273853f1f8837d590caef875",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.3/REVLib-driver-2024.2.3-linuxathenastatic.zip",
        sha256 = "d4725578744681734451c6654067c53fd6823ae1bad1f088ef1352e13b163242",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.3/REVLib-driver-2024.2.3-linuxarm32.zip",
        sha256 = "e008a05e5a57ba34bef429c7775344ed5c848b6cea3e82f608eddd985216777e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.3/REVLib-driver-2024.2.3-linuxarm32static.zip",
        sha256 = "86d6cc664d915dfebe0ec0c25bd941f929fcf36fb8e2c38794a6ba60b33e6655",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.3/REVLib-driver-2024.2.3-osxuniversal.zip",
        sha256 = "d5b3e32c5451027e5fa04e6d1948b092ad6fcdaebace22f0f462d08ccb194198",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.2.3/REVLib-driver-2024.2.3-osxuniversalstatic.zip",
        sha256 = "e631af59305d07729178409e33877875ced03a596ca047c49dae0522dce4bc82",
        build_file_content = cc_library_static,
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
