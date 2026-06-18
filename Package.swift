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
            url: "https://github.com/Fiskher/fish-vision-ar-spm/releases/download/0.1.3/FishVisionAR.xcframework.zip",
            checksum: "32314ef423264facabd4a63a038183f48c61f677f6e80b3dc3277eaab6abfc23"
        ),
    ]
)
