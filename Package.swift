// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BRFluentModule",
    platforms: [.iOS(.v11) , .macOS(.v10_14) , .watchOS(.v6)],
    products: [
        .library(
            name: "BRFluentModule",
            targets: ["BRFluentModule"]),
    ],
    targets: [
        .target(
            name: "BRFluentModule",
            dependencies: [],
            path:"BRFluentModule"
        ),
        .testTarget(
            name: "BRFluentModuleTests",
            dependencies: ["BRFluentModule"]),
    ]
)
