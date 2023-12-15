// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Linphone-iOS",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Linphone-iOS",
            targets: ["Linphone-iOS", "linphone"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Linphone-iOS"),
        .binaryTarget(name: "linphone",
                      url: "https://github.com/jbuhler-c4/Linphone-iOS/releases/download/5.1.65/linphone.xcframework.zip",
                     checksum: "ce7b435d732bff3dfba8944aa8e33939d9e42a04b34daa84f4ebbe906c68f27d"),
        .testTarget(
            name: "Linphone-iOSTests",
            dependencies: ["Linphone-iOS"]),
    ]
)
