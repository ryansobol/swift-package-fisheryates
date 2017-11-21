// swift-tools-version:4.0

import PackageDescription

let package = Package(
  name: "FisherYates",
  products: [
    .library(name: "FisherYates", targets: ["FisherYates"]),
  ],
  targets: [
    .target(name: "FisherYates", dependencies: []),
    .testTarget(name: "FisherYatesTests", dependencies: ["FisherYates"]),
  ]
)
