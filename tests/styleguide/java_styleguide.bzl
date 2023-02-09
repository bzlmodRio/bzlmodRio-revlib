load("@rules_pmd//pmd:defs.bzl", "pmd")
load("@rules_checkstyle//checkstyle:defs.bzl", "checkstyle")

def java_styleguide(name, srcs = None):
    if not srcs:
        srcs = native.glob(["**/*.java"])

    pmd(
        name = name + ".pmd",
        srcs = srcs,
        rulesets = ["//styleguide:pmd_rules"],
    )

    checkstyle(
        name = name + ".checkstyle",
        srcs = srcs,
        config_file = "//styleguide:checkstyle",
    )
