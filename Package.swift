// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "SwiftyUI",
    products: [
        .library(
            name: "SwiftyUI",
            targets: ["SwiftyUI"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftyUI",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "SwiftyUITests",
            dependencies: ["SwiftyUI"],
            path: "Tests"
        ),
    ]
)
