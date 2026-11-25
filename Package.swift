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
        .binaryTarget(name: "SnapBeautyMacOS", url: "https://github.com/YunJuChuang-Tech/snapbeauty-macos-sdk/releases/download/1.3.6/SnapBeauty-macOS-1.3.6.xcframework.zip", checksum: "3fdc5ab2774f913fa40408a5eade5e3c8d17fd9d59399846494bf84276b0cfb7"),
        .binaryTarget(name: "SnapBeautyGPUMacOS", url: "https://github.com/YunJuChuang-Tech/snapbeauty-macos-sdk/releases/download/1.3.6/SnapBeautyGPU-macOS-1.3.6.xcframework.zip", checksum: "5c9c354e6820fa956154a27cabf9f6045bc221603fa8239288643b8c09bcda64"),
        .target(
            name: "SnapBeautyMacOSResources",
            dependencies: ["SnapBeautyMacOS"],
            resources: [.copy("Resources/Assets"), .copy("Resources/Shaders")]
        ),
    ]
)
