// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SnapBeautyMacOSDistribution",
    platforms: [.macOS(.v12)],
    products: [
        .library(name: "SnapBeautyMacOSSDK", targets: ["SnapBeautyMacOSResources"]),
    ],
    targets: [
        .binaryTarget(name: "SnapBeautyMacOS", url: "https://github.com/YunJuChuang-Tech/snapbeauty-macos-sdk/releases/download/1.3.1/SnapBeauty-macOS-1.3.1.xcframework.zip", checksum: "d9ecda49b65af749a6a385ccc323728a6082e6d0bb19012e2573338ec9644cbf"),
        .target(
            name: "SnapBeautyMacOSResources",
            dependencies: ["SnapBeautyMacOS"],
            resources: [.copy("Resources/Assets"), .copy("Resources/Shaders")]
        ),
    ]
)
