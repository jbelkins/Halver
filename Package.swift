// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Halver",
    products: [
        .executable(name: "Halver", targets: ["Halver"]),
    ],
    dependencies: [
        .package(id: "sprjbe.Doubler", from: "1.0.0")
    ],
    targets: [
        .executableTarget(name: "Halver", dependencies: [.product(name: "Doubler", package: "sprjbe.Doubler")]),
        .testTarget(name: "HalverTests", dependencies: ["Halver"]),
    ]
)
