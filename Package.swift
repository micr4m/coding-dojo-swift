// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CheckoutKata",
    products: [
        .library(
            name: "Checkout",
            targets: ["Checkout"]
        )
    ],
    targets: [
        .target(name: "Checkout"),
        .testTarget(
            name: "CheckoutTests",
            dependencies: ["Checkout"]
        )
    ]
)
