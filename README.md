# SnapBeauty macOS SDK 1.3.9

Requires macOS 12 or later and Apple silicon (arm64).

Add the Swift package and select the `SnapBeautyMacOSSDK` product. Import
`SnapBeauty` for the SDK API and `SnapBeautyMacOSResources` for the bundled
models, filters, and Metal shaders. Obtain a separate macOS license bound to
your app's Bundle ID.

See `NOTICE.md` and `Licenses/macOS/` for third-party attribution.

Optional Metal GPU inference is available through the SnapBeautyGPUMacOS product. Without it, the SDK uses the CPU runtime.
