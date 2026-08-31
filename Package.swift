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
            url: "https://github.com/Fiskher/fish-vision-ar-spm/releases/download/0.3.3/FishVisionAR.xcframework.zip",
            checksum: "e1de48673c93a9df58e78b5c068d441f0edb5eb73be2acfdb3f117beb37c5c73"
        ),
    ]
)
