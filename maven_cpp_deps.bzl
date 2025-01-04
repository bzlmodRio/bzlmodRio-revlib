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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0/REVLib-cpp-2025.0.0-headers.zip",
        sha256 = "09fe20606459c0a22b1873e37ff836ef6309decd2b110ed9a856ed7c4b82a16c",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0/REVLib-cpp-2025.0.0-windowsx86-64.zip",
        sha256 = "f530c5075511a3876a5d9569bb097afdad58ff26d7e83453e40b5ae2aca36b9c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0/REVLib-cpp-2025.0.0-windowsx86-64static.zip",
        sha256 = "1108e47e538cf7a24fe9f74ccbd8c4523a7f09f7c99502c0a51a7b3e8bbbd661",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0/REVLib-cpp-2025.0.0-linuxarm64.zip",
        sha256 = "80c65f33d287065e71f4c1f1fd970eab214aee7cf23133bbf13a9c589b9d9770",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0/REVLib-cpp-2025.0.0-linuxarm64static.zip",
        sha256 = "013cbb6c2446e7e6b4ace149cfff66df59cbd0c93ac796d67fd845d754110cf0",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0/REVLib-cpp-2025.0.0-linuxx86-64.zip",
        sha256 = "bf6240cd4e9853da9143c4faf870b66225e21e28835c075c04980ff7f6d878b4",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0/REVLib-cpp-2025.0.0-linuxx86-64static.zip",
        sha256 = "91000b52f8399c918b90377829c52fe85abb1e3f88928368fd76e1549cb9a02e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0/REVLib-cpp-2025.0.0-linuxathena.zip",
        sha256 = "b317d2681c16de0a80b211be7d9fddfe0a9659b1e27678ebf46239dee38ccafe",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0/REVLib-cpp-2025.0.0-linuxathenastatic.zip",
        sha256 = "8c2fbbb0a102e092c03463886b767b6d34d610ce2e63f0e8ccf53d34fd74842c",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0/REVLib-cpp-2025.0.0-linuxarm32.zip",
        sha256 = "ec6d7f5c18c182975cdf08bdbe744f2d014cd8730de78ee065c4fc5772e98ccc",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0/REVLib-cpp-2025.0.0-linuxarm32static.zip",
        sha256 = "5d6527db3dce87c6039ad9c999da85aa80a653f5164b86a916e13713ba2dac58",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0/REVLib-cpp-2025.0.0-osxuniversal.zip",
        sha256 = "24882e5f351ee7223f14185d04f627c9c9c47bdab4636969c8174a3c49a1d3d3",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:shared.BUILD.bazel",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2025.0.0/REVLib-cpp-2025.0.0-osxuniversalstatic.zip",
        sha256 = "f62b3f7b7ce42df9349eef3e56882f2b53122e0ef20679d3dd2ec8f32395fbcb",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-cpp:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0/REVLib-driver-2025.0.0-headers.zip",
        sha256 = "1679efd49ac04a3f28fb9b1c9c922b70de45eb6399fd0ac012a44c19af5bf016",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0/REVLib-driver-2025.0.0-windowsx86-64.zip",
        sha256 = "afe67ce73061ace633c293479d1660587662ec361205a264674a722049eb7514",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0/REVLib-driver-2025.0.0-windowsx86-64static.zip",
        sha256 = "0ea00d7e72cc49196bceed3f15b4cfa7f6775ef6c366d3ba9807bed734d290f9",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0/REVLib-driver-2025.0.0-linuxarm64.zip",
        sha256 = "e9cb9465e3cd5dea2f3baac4218c662d4a01ba8cb0f8ec4b793d1b07ed714af2",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0/REVLib-driver-2025.0.0-linuxarm64static.zip",
        sha256 = "b175644632c7876648065ae1c46d7a497d45ddf1b5b8d79d70b3300d54f66a1b",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0/REVLib-driver-2025.0.0-linuxx86-64.zip",
        sha256 = "97d27df0d0fb9a1e74e8973457f6be3cd4aef7d1fbf0f64aa084165c9990f378",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0/REVLib-driver-2025.0.0-linuxx86-64static.zip",
        sha256 = "b40561f034c895eded88bc139c2ec51011309d7a48a50a58674013b2d89003e0",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0/REVLib-driver-2025.0.0-linuxathena.zip",
        sha256 = "e4ef2c8d33265de29ed6818d36b1549704f4c996784a226a5349673f41b46069",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0/REVLib-driver-2025.0.0-linuxathenastatic.zip",
        sha256 = "384456c2ae8821aadeb0822ac1a11e335fc1bf6841b1ed4373d374012c6d55e3",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0/REVLib-driver-2025.0.0-linuxarm32.zip",
        sha256 = "e1a471ddf664e628c55fc513b41501e408506103daec23c4b319f9268ace2f33",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:shared.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0/REVLib-driver-2025.0.0-linuxarm32static.zip",
        sha256 = "228b30481482db176fbcbf621465f56285578b62f6b6e9fb252068a4bc804282",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )
    maybe(
        http_archive,
        "bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0/REVLib-driver-2025.0.0-osxuniversal.zip",
        sha256 = "4af6f89fc88688d10e90087d74b52dccc9efa1286d06205ae3c296c742a8bd89",
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
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2025.0.0/REVLib-driver-2025.0.0-osxuniversalstatic.zip",
        sha256 = "1e2e7bae40810d968a350d01fa8e953956ac4024dc87a6358d0d34895b43004e",
        build_file = "@bzlmodrio-revlib//private/cpp/REVLib-driver:static.BUILD.bazel",
    )

def setup_legacy_bzlmodrio_revlib_cpp_dependencies():
    __setup_bzlmodrio_revlib_cpp_dependencies(None)

setup_bzlmodrio_revlib_cpp_dependencies = module_extension(
    __setup_bzlmodrio_revlib_cpp_dependencies,
)
