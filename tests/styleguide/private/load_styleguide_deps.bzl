load("@rules_pmd//pmd:dependencies.bzl", "rules_pmd_dependencies")
load("@rules_wpiformat//wpiformat:load_wpiformat_rules_dependencies.bzl", "rules_wpiformat_dependencies")

def load_styleguide_deps():
    rules_pmd_dependencies()
    rules_wpiformat_dependencies()
