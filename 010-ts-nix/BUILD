load("@build_bazel_rules_nodejs//:index.bzl", "nodejs_binary")

load("@aspect_rules_ts//ts:defs.bzl", "ts_project")

ts_project(
    name = "hello_ts",
    srcs = ["hello.ts"],
    tsconfig = "//:tsconfig.json",
    data = [
        "@npm//ololog"
    ],
)

nodejs_binary(
    name = "hello",
    entry_point = ":hello_ts",
    data = [],
)
