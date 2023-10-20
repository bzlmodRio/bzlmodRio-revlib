import os

from bazelrio_gentool.load_vendordep_dependency import vendordep_dependency
from get_allwpilib_dependencies import get_allwpilib_dependencies
from bazelrio_gentool.deps.dependency_container import (
    ModuleDependency,
)


def get_revlib_dependencies(
    use_local_allwpilib=False,
    use_local_opencv=False,
    use_local_ni=False,
    allwpilib_version_override="2024.1.1-beta-1",
    opencv_version_override="2024.4.8.0-1",
):
    SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))

    allwpilib_dependency = ModuleDependency(
        get_allwpilib_dependencies(
            use_local_opencv=use_local_opencv,
            use_local_ni=use_local_ni,
            opencv_version_override=opencv_version_override,
        ),
        use_local_version=use_local_allwpilib,
        local_rel_folder="../../libraries/bzlmodRio-allwpilib",
        remote_repo="bzlmodRio-allwpilib",
        override_version=allwpilib_version_override,
    )

    group = vendordep_dependency(
        "bzlmodrio-revlib",
        os.path.join(SCRIPT_DIR, f"vendor_dep.json"),
        year=2023,
        fail_on_hash_miss=False,
        has_static_libraries=True,
        install_name_lookup={
            "REVLib-cpp": dict(
                artifact_install_name="REVLib",
                deps=[
                    "REVLib-driver",
                    allwpilib_dependency.container.get_cc_dependency("wpilibc-cpp"),
                ],
            ),
            "REVLib-driver": dict(
                artifact_install_name="REVLibDriver",
                deps=[
                    allwpilib_dependency.container.get_cc_dependency("wpimath-cpp"),
                    allwpilib_dependency.container.get_cc_dependency("wpiutil-cpp"),
                    allwpilib_dependency.container.get_cc_dependency("hal-cpp"),
                ],
            ),
        },
    )

    group.add_module_dependency(allwpilib_dependency)

    group.add_cc_meta_dependency(
        "revlib-cpp",
        deps=["REVLib-cpp", "REVLib-driver", "wpilibc-cpp"],
        platform_deps={},
        jni_deps={
            "//conditions:default": [
                "REVLib-driver",
            ]
        },
    )

    group.add_java_meta_dependency(
        "revlib-java",
        group_id=f"com.revrobotics.frc",
        deps=["wpilibj-java", "revlib-cpp"],
    )

    return group
