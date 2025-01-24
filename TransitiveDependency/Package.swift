// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "TransitiveDependency",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "TransitiveDependency",
            type: .dynamic,
            targets: ["TransitiveDependency"]),
    ],
    targets: [
        .target(
            name: "TransitiveDependency"
        )
    ]
)
