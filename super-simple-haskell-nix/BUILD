load(
    "@rules_haskell//haskell:defs.bzl",
    "haskell_binary",
    "haskell_toolchain_library",
)

haskell_toolchain_library(name = "base")

haskell_binary(
    name = "hello-world",
    srcs = ["hello-world.hs"],
    deps = [
        ":base",
    ],
)
