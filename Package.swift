// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let baseURL = "https://github.com/jbuhler-c4/Linphone-iOS/releases/download/5.1.67"

let package = Package(
    name: "Linphone-iOS",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Linphone-iOS",
            targets: ["Linphone-iOS"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Linphone-iOS",
            dependencies: ["bctoolbox-ios",
                           "bctoolbox",
                           "belcard",
                           "belle-sip",
                           "belr",
                           "lime",
                           "linphone",
                           "linphonetester",
                           "mediastreamer2",
                           "msamr",
                           "mscodec2",
                           "msopenh264",
                           "mssilk",
                           "mswebrtc",
                           "msx264",
                           "ortp"
                          ]),
        
            .binaryTarget(name: "bctoolbox-ios",
                          url: "\(baseURL)/bctoolbox-ios.xcframework.zip",
                          checksum: "a367a00e66acc11209a946a6e8111e9c0a13037d69257bd0ed128f22ba2b3d9f"),
        .binaryTarget(name: "bctoolbox",
                      url: "\(baseURL)/bctoolbox.xcframework.zip",
                      checksum: "82f8278f8d35834c16cc927b24817865358fc420fbae431447582a1d855702ba"),
        .binaryTarget(name: "belcard",
                      url: "\(baseURL)/belcard.xcframework.zip",
                      checksum: "51892f58049dbb5e79fe5144ed7cd706caf54f7c63a7d3189aa83ea51b0e154c"),
        .binaryTarget(name: "belle-sip",
                      url: "\(baseURL)/belle-sip.xcframework.zip",
                      checksum: "1b9e9957254e8640836eb74c87cba13e8290afd6dad6a309c1c082cb24d5e751"),
        .binaryTarget(name: "belr",
                      url: "\(baseURL)/belr.xcframework.zip",
                      checksum: "a62f641e30adea24ca79c2d8572cefb1fd9fdce90fb7abb45681c3503462d258"),
        .binaryTarget(name: "lime",
                      url: "\(baseURL)/lime.xcframework.zip",
                      checksum: "1be2d2ab893d09babcebab63196f74c5233d044e0b9aee5dc36d81ea68a7e492"),
        .binaryTarget(name: "linphone",
                      url: "\(baseURL)/linphone.xcframework.zip",
                      checksum: "ce7b435d732bff3dfba8944aa8e33939d9e42a04b34daa84f4ebbe906c68f27d"),
        .binaryTarget(name: "linphonetester",
                      url: "\(baseURL)/linphonetester.xcframework.zip",
                      checksum: "560e1ed459062b4cb2815afeb9ec82b0ddcdb574da95c235ac44dec74deb68df"),
        .binaryTarget(name: "mediastreamer2",
                      url: "\(baseURL)/mediastreamer2.xcframework.zip",
                      checksum: "35810caa5469527b1361c3f19561a209f60412c54e3dbff0dfc64c076f9e469e"),
        .binaryTarget(name: "msamr",
                      url: "\(baseURL)/msamr.xcframework.zip",
                      checksum: "590aa56cf50118d4720309c1f2d9d25c057f4e3528a9d6b64c5647e3af455c62"),
        .binaryTarget(name: "mscodec2",
                      url: "\(baseURL)/mscodec2.xcframework.zip",
                      checksum: "bf5f56d3ecc162b8d300452d5a196f34e4226706a5e8b7b467033c9fb93fa86a"),
        .binaryTarget(name: "msopenh264",
                      url: "\(baseURL)/msopenh264.xcframework.zip",
                      checksum: "471cb00b83758a598ed710025a179ee3da38cae1a5d04d0eba4e51de400111c5"),
        .binaryTarget(name: "mssilk",
                      url: "\(baseURL)/mssilk.xcframework.zip",
                      checksum: "aead2887e1f566960bb2d4b16e01ddb41acc8583ba5805e6e318cee1bf3ef3c1"),
        .binaryTarget(name: "mswebrtc",
                      url: "\(baseURL)/mswebrtc.xcframework.zip",
                      checksum: "d58eb6c8caaf75fb40149b5fd929545d946a2320b80ecf78f2ae4eea80aeee4a"),
        .binaryTarget(name: "msx264",
                      url: "\(baseURL)/msx264.xcframework.zip",
                      checksum: "8a93c1066b1f686fedf102425c649be9b3dc0d0a4aa9a6ef80ba97fd73d82d06"),
        .binaryTarget(name: "ortp",
                      url: "\(baseURL)/ortp.xcframework.zip",
                      checksum: "4d8bfae9acb940b3f81e880e66139224a7964af79acd7bcbeebfbdc69c85e3c2"),
        
        
            .testTarget(
                name: "Linphone-iOSTests",
                dependencies: ["Linphone-iOS"]),
    ]
)
