load("@rules_cc//cc:defs.bzl", "cc_library")

load(
    "@rules_haskell//haskell:defs.bzl",
    "haskell_binary",
    "haskell_library",
    "haskell_toolchain_library",
)

haskell_toolchain_library(name = "aeson")

haskell_toolchain_library(name = "base")

haskell_toolchain_library(name = "text")

haskell_binary(
    name = "hello-world",
    srcs = ["hello-world.hs"],
    deps = [
        ":base",
	":HsLib",
	":clib",
    ],
)

haskell_library(
    name = "HsLib",
    srcs = ["HsLib.hs"],
    deps = [
        ":aeson",
        ":base",
        ":text",
    ],
)

cc_library(
    name = "clib",
    srcs = ["clib.cc"],
)