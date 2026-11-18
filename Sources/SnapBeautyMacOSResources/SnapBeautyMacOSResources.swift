import Foundation
import SnapBeauty

public enum SnapBeautyMacOSResources {
    private static var resourceRoot: URL { Bundle.module.resourceURL ?? Bundle.module.bundleURL }

    public static var assets: URL { resourceRoot.appendingPathComponent("Assets", isDirectory: true) }
    public static var shaders: URL { resourceRoot.appendingPathComponent("Shaders", isDirectory: true) }

    public static func makeEngine(assets: URL? = nil) throws -> SnapBeautyEngine {
        try SnapBeautyEngine(assetsPath: (assets ?? self.assets).path, shadersPath: shaders.path)
    }
}
