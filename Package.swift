// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftExtensions",
    products: [
        .library(
            name: "SwiftExtensions",
            targets: ["SwiftExtensions"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftExtensions",
            dependencies: []),
        .testTarget(
            name: "SwiftExtensionsTests",
            dependencies: ["SwiftExtensions"]),
    ]
)
