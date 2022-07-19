// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VAMP-SPM",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "VAMP-SPM",
            targets: ["VAMP-SPM"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(
//            name: "VAMP-SPM",
//            dependencies: []),
        .binaryTarget(
            name: "VAMP-SDK",
            url: "https://d2dylwb3shzel1.cloudfront.net/iOS/VAMP-v4.4.2.zip",
            checksum: "761cdb9334c5e4d1ba435cdca63e0dc5a44951e71bbbfc02b9dc5741faff59d9"
        ),
        .binaryTarget(
            name: "VAMPMaioAdapter",
            url: "https://d2dylwb3shzel1.cloudfront.net/iOS/VAMPMaioAdapter-v1.6.2.0.zip",
            checksum: "6c9b7ddee0121f931d6b286e052ebb48cb04ff6f0a34d0da8fc7b9bb461b9782"
        ),
        .binaryTarget(
            name: "VAMPNendAdapter",
            url: "https://d2dylwb3shzel1.cloudfront.net/iOS/VAMPNendAdapter-v7.3.0.0.zip",
            checksum: "56d73a1c6cf15cf7c0af7d43056bc71c7bc764bdaeabd4e5b0ad1b5a9f46a365"
        ),
        .binaryTarget(
            name: "VAMPTapjoyAdapter",
            url: "https://d2dylwb3shzel1.cloudfront.net/iOS/VAMPTapjoyAdapter-v12.10.0.0.zip",
            checksum: "a5e3a36585d26460d674a96ea6fb89855be7e39d84c637f1f24bc30950e3bdcd"
        ),
        .binaryTarget(
            name: "VAMPUnityAdsAdapter",
            url: "https://d2dylwb3shzel1.cloudfront.net/iOS/VAMPUnityAdsAdapter-v4.2.1.0.zip",
            checksum: "d5f57c8d9365a4af712daf1a78c04b40582c1889ba5c4c1c7c70a976242f3d1b"
        ),
        .testTarget(
            name: "VAMP-SPMTests",
            dependencies: ["VAMP-SPM"]),
    ]
)
