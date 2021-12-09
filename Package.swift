// swift-tools-version:5.5
/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Package manifest for ChristmasSongCreator.
*/

import PackageDescription

let package = Package(
    name: "ChristmasSongCreator",
    platforms: [
        .macOS(.v11),
        .iOS(.v14),
        .watchOS(.v7),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "ChristmasSongCreator",
            targets: ["ChristmasSongCreator"]
        )
    ],
    targets: [
        .target(
            name: "ChristmasSongCreator",
            resources: [
                .process("Resources/")
            ]
        )
    ]
)
