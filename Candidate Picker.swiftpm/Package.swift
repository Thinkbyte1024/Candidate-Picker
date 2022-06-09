// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Candidate Picker",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Candidate Picker",
            targets: ["AppModule"],
            displayVersion: "0.0.1",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .paper),
            accentColor: .presetColor(.mint),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ],
            appCategory: .utilities
        )
    ],
    dependencies: [
        .package(url: "https://github.com/JohnEstropia/CoreStore.git", "8.1.0"..<"9.0.0")
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [
                .product(name: "CoreStore", package: "CoreStore")
            ],
            path: "."
        )
    ]
)