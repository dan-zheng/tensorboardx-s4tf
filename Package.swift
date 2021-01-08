// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TensorBoardX",
    platforms: [
        .macOS(.v10_13),
    ],
    products: [
        .library(
            name: "TensorBoardX",
            targets: ["TensorBoardX"]),
        .executable(
            name: "TestPlot",
            targets: ["TestPlot"])
    ],
    dependencies: [
        .package(name: "TensorFlow", url: "https://github.com/tensorflow/swift-apis", .branch("main")),
    ],
    targets: [
        .target(
            name: "TensorBoardX",
            dependencies: ["TensorFlow"]),
        .target(
            name: "TestPlot",
            dependencies: ["TensorBoardX"]),
        .testTarget(
            name: "TensorBoardXTests",
            dependencies: ["TensorBoardX"]),
    ]
)
