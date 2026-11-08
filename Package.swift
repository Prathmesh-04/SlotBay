// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "SlotBay",
    platforms: [.iOS(.v18), .macOS(.v14)],
    products: [
        .library(name: "SlotBayCore", targets: ["SlotBayCore"])
    ],
    targets: [
        .target(name: "SlotBayCore"),
        .testTarget(name: "SlotBayCoreTests", dependencies: ["SlotBayCore"])
    ]
)
