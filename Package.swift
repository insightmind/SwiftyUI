// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftyUI",
    platforms: [.iOS("13.0"), .macOS("10.15"), .tvOS("13.0"), .watchOS("6.0")],
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
