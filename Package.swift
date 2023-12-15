// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Linphone-iOS",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Linphone-iOS",
            targets: ["Linphone-iOS", "LinphoneSDK"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Linphone-iOS"),
        .binaryTarget(name: "LinphoneSDK",
                      url: "https://github.com/jbuhler-c4/Linphone-iOS/releases/download/5.1.63/LinphoneSDK.zip",
                     checksum: "92af7ba71280cbcf3e34864bcc5ccc0fdbcde53b686833cb38002c86a766171f"),
        .testTarget(
            name: "Linphone-iOSTests",
            dependencies: ["Linphone-iOS"]),
    ]
)
