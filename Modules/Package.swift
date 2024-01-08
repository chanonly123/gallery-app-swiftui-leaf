// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Modules",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "GalleryModules",
            targets: ["GalleryCore",
                      "GalleryUI",
                      "GalleryData"])
    ],
    targets: [
        .target(
            name: "GalleryCore",
            dependencies: ["GalleryData"],
            path: "GalleryCore",
            exclude: ["tests/Test.swift"]
        ),
        
        .target(
            name: "GalleryUI",
            dependencies: ["GalleryData"],
            path: "GalleryUI"
        ),
    
        .target(
            name: "GalleryData",
            path: "GalleryData"
        ),
        
        .testTarget(
            name: "GalleryCoreTests",
            dependencies: ["GalleryData", "GalleryCore"],
            path: "GalleryCore/tests"
        ),
    ]
)
