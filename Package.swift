// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "SwiftExtensions",
    products: [
        .library(
            name: "FoundationExt",
            targets: ["FoundationExt"]
        ),
        .library(
            name: "UIKitExt",
            targets: ["UIKitExt"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FoundationExt",
            dependencies: []
        ),
        .target(
            name: "UIKitExt",
            dependencies: [
                "NSUIKitExt"
            ]
        ),
        .target(
            name: "NSUIKitExt",
            dependencies: []
        ),
        .testTarget(
            name: "SwiftExtensionsTests",
            dependencies: []
        ),
    ]
)
