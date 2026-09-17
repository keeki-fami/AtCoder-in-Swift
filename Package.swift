// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Atcoder-in-Swift",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AtCoderInSwift",
            targets: ["AtCoderInSwift"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-collections/", from: "1.6.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AtCoderInSwift",
            dependencies: [
                .product(name: "DequeModule", package: "swift-collections")
            ]
        ),
        .testTarget(
            name: "ACLibraryTests",
            dependencies: ["AtCoderInSwift"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
