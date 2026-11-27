// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SnapBeautyMacOSDistribution",
    platforms: [.macOS(.v12)],
    products: [
        .library(name: "SnapBeautyMacOSSDK", targets: ["SnapBeautyMacOSResources"]),
        .library(name: "SnapBeautyGPUMacOS", targets: ["SnapBeautyGPUMacOS"]),
    ],
    targets: [
        .binaryTarget(name: "SnapBeautyMacOS", url: "https://github.com/YunJuChuang-Tech/snapbeauty-macos-sdk/releases/download/1.3.9/SnapBeauty-macOS-1.3.9.xcframework.zip", checksum: "431b386aaa751c66c5ed3c3c8712d792a5e3e7f5cc92b2d90ef5dbd36dc5419e"),
        .binaryTarget(name: "SnapBeautyGPUMacOS", url: "https://github.com/YunJuChuang-Tech/snapbeauty-macos-sdk/releases/download/1.3.9/SnapBeautyGPU-macOS-1.3.9.xcframework.zip", checksum: "47f1b6a74530e21e61183b3fcde2a60d5fdd21b01bc4be8ff816d9be7b67f0aa"),
        .target(
            name: "SnapBeautyMacOSResources",
            dependencies: ["SnapBeautyMacOS"],
            resources: [.copy("Resources/Assets"), .copy("Resources/Shaders")]
        ),
    ]
)
