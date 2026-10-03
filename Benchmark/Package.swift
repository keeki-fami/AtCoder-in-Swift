// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BenchmarkChecker",
    dependencies: [
        .package(url: "https://github.com/google/swift-benchmark", from: "0.1.2"),
        .package(url: "https://github.com/keeki-fami/AtCoder-in-Swift", from: "0.1.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "BenchmarkChecker",
            dependencies: [
                .product(name: "Benchmark", package: "swift-benchmark"),
                .product(name: "AtCoderInSwift", package: "AtCoder-in-Swift")
            ]
        ),
        .testTarget(
            name: "BenchmarkTests",
            dependencies: ["BenchmarkChecker"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
