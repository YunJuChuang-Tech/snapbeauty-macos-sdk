// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SnapBeautyMacOSDistribution",
    platforms: [.macOS(.v12)],
    products: [
        .library(name: "SnapBeautyMacOSSDK", targets: ["SnapBeautyMacOSResources"]),
    ],
    targets: [
        .binaryTarget(name: "SnapBeautyMacOS", url: "https://github.com/YunJuChuang-Tech/snapbeauty-macos-sdk/releases/download/1.3.2/SnapBeauty-macOS-1.3.2.xcframework.zip", checksum: "5dc6c9470cc28846ee64c50d01b3daf868afa007bfd7ed2759e50f9e97889fd2"),
        .target(
            name: "SnapBeautyMacOSResources",
            dependencies: ["SnapBeautyMacOS"],
            resources: [.copy("Resources/Assets"), .copy("Resources/Shaders")]
        ),
    ]
)
