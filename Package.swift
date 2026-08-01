// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CodingDojoSwift",
    products: [
        .library(
            name: "GameOfLife",
            targets: ["GameOfLife"]
        )
    ],
    targets: [
        .target(name: "GameOfLife"),
        .testTarget(
            name: "GameOfLifeTests",
            dependencies: ["GameOfLife"]
        )
    ]
)
