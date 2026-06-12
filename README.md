# FishVisionAR

iOS Swift Package providing on-device AR fish species classification and length measurement, built on ARKit + Core ML + Vision.

This repository is the public SPM manifest for the FishVisionAR SDK. The framework is distributed as a precompiled XCFramework attached to this repo's GitHub Releases. The source repository is private; commercial integration is covered by a separate license agreement (see `LICENSE`).

## Installation

Add to your app's `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/Fiskher/fish-vision-ar-spm.git", from: "0.1.0"),
]
```

Or in Xcode: `File → Add Package Dependencies…` → paste `https://github.com/Fiskher/fish-vision-ar-spm.git`.

Then add the `FishVisionAR` product to your app target's *Frameworks, Libraries, and Embedded Content* section.

## Requirements

- **iOS 17.0+**
- **Physical device** for AR features (the iOS Simulator builds and runs unit tests, but `ARScannerView` needs real-device camera + ARKit).
- **`NSCameraUsageDescription`** in the consuming app's `Info.plist`.
- A **license key** supplied at license activation. Pre-release builds accept any non-empty string as a placeholder.

## Quick start

```swift
import SwiftUI
import FishVisionAR

struct ScanScreen: View {
    @StateObject private var scanner = ARScannerController()

    var body: some View {
        ARScannerView(
            controller: scanner,
            configuration: ARScannerConfiguration(
                license: ARScannerLicense(key: "YOUR_LICENSE_KEY")
            ),
            onScan: { outcome in
                print(outcome.topClassification.label)
                print(outcome.measurementMeters ?? "(no measurement)")
            }
        )
        .ignoresSafeArea()
    }
}
```

The full integration guide, public-API reference, and runnable example app are provided with every license activation.

## License

Commercial. See `LICENSE`. Contact `ivan@fiskher.no` for licensing inquiries, evaluation builds, or technical questions.

## Versioning

Tags use bare semver (no `v` prefix), as SPM expects. Each tag corresponds to a GitHub Release whose `FishVisionAR.xcframework.zip` asset is referenced by `Package.swift`.
