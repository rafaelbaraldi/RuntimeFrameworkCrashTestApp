// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "DynamicFrameworkSample",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "DynamicFrameworkSample",
            targets: ["DynamicFrameworkSample"]),
    ],
    dependencies: [
        .package(path: "../DependencyAsPod")
    ],
    targets: [
        .binaryTarget(
            name: "DynamicFrameworkSample",
            path: "DynamicFrameworkSample.xcframework"
        )
    ]
)
