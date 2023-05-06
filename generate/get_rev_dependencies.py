import os

from bazelrio_gentool.load_vendordep_dependency import vendordep_dependency
from get_allwpilib_dependencies import get_allwpilib_dependencies
from bazelrio_gentool.deps.dependency_container import (
    ModuleDependency,
)


def get_rev_dependencies(
    use_local_allwpilib=False, use_local_opencv=False, use_local_ni=False
):
    SCRIPT_DIR = os.environ["BUILD_WORKSPACE_DIRECTORY"]
    group = vendordep_dependency(
        "bzlmodrio-revlib",
        os.path.join(SCRIPT_DIR, f"vendor_dep.json"),
        year=2023,
        fail_on_hash_miss=False,
        has_static_libraries=True,
    )

    allwpilib_dependency = ModuleDependency(
        get_allwpilib_dependencies(
            use_local_opencv=use_local_opencv, use_local_ni=use_local_ni
        ),
        use_local_version=use_local_allwpilib,
        local_rel_folder="../../bzlmodRio-allwpilib",
        remote_repo="bzlmodRio-allwpilib",
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
