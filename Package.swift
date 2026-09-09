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
            url: "https://github.com/Fiskher/fish-vision-ar-spm/releases/download/0.4.3/FishVisionAR.xcframework.zip",
            checksum: "1a6acd13d85a3a04e6a4a82f112f218760aa97530ace866e4fb3ff57d93adcfc"
        ),
    ]
)
