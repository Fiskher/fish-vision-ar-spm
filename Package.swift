// swift-tools-version:5.10
//
//  Package.swift
//  FishVisionAR
//
//  Public SPM manifest for the FishVisionAR XCFramework distribution.
//  The framework binary is hosted as a release asset on this repo's
//  GitHub Releases. Source repo (fish-vision-ar) is private; this
//  manifest is the consumer-facing entry point.
//

import PackageDescription

let package = Package(
    name: "FishVisionAR",
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(name: "FishVisionAR", targets: ["FishVisionAR"]),
    ],
    targets: [
        .binaryTarget(
            name: "FishVisionAR",
            url: "https://github.com/Fiskher/fish-vision-ar-spm/releases/download/0.1.2/FishVisionAR.xcframework.zip",
            checksum: "36100ef3e39b545c3f69019aec959e0d432ad6fb399073f5f7913ad5fa9ed86b"
        ),
    ]
)
