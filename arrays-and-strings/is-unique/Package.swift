// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "IsUnique",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "IsUnique",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
        .testTarget(
            name: "TestIsUnique",
            dependencies: ["IsUnique"]
        ),
    ]
)