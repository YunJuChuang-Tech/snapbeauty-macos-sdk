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
        .binaryTarget(name: "SnapBeautyMacOS", url: "https://github.com/YunJuChuang-Tech/snapbeauty-macos-sdk/releases/download/1.3.5/SnapBeauty-macOS-1.3.5.xcframework.zip", checksum: "2e1792b3cfcd289238c4cf14ac0be1573b3141cb938ce2149efce00abed8bd5d"),
        .binaryTarget(name: "SnapBeautyGPUMacOS", url: "https://github.com/YunJuChuang-Tech/snapbeauty-macos-sdk/releases/download/1.3.5/SnapBeautyGPU-macOS-1.3.5.xcframework.zip", checksum: "d37fdf0bc92e959075e364d0e1a2ccd8de7e0580bf65717daef262e11f61172f"),
        .target(
            name: "SnapBeautyMacOSResources",
            dependencies: ["SnapBeautyMacOS"],
            resources: [.copy("Resources/Assets"), .copy("Resources/Shaders")]
        ),
    ]
)
