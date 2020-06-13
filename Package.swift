// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "show",
    platforms: [
        .macOS(.v10_12)
    ],
    products: [
        .executable(
            name: "show",
            targets: ["show"]),
    ],
    dependencies: [
        .package(
            url:"https://github.com/apple/swift-argument-parser",
            .exact("0.0.6")),
    ],
    targets: [
        .target(
            name: "show",
            dependencies: [.product(name: "ArgumentParser", package: "swift-argument-parser")],
            path: "show/"
        ),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
