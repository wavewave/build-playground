load("@rules_cc//cc:defs.bzl", "cc_library")

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
	":clib",
    ],
)

cc_library(
    name = "clib",
    srcs = ["lib.cc"],
)