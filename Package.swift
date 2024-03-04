// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CLoadPNG",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CLoadPNG",
            targets: ["CLoadPNG"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CLoadPNG",
            cSettings: [
                .define("LODEPNG_NO_COMPILE_DISK"),
                .unsafeFlags(["-ansi", "-pedantic", "-Wall", "-Wextra", "-O3"])
            ]),
    ]
)
