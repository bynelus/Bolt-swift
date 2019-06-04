// swift-tools-version:5.0

import PackageDescription

var targets: [PackageDescription.Target] = [
	.target(name: "Bolt", dependencies: ["PackStream", "NIO", "NIOSSL", "NIOTLS", "NIOTransportServices", "NIOExtras"], path: "Sources"),
	.testTarget(name: "BoltTests", dependencies: ["Bolt"]),
]

let package = Package(
    name: "Bolt",
	products: [
		.library(name: "Bolt", targets: ["Bolt"]),
	],
	dependencies: [
	    .package(url: "https://github.com/Neo4j-Swift/PackStream-swift.git", from: "1.1.2"),
	    .package(url: "https://github.com/apple/swift-nio.git", from: "2.0.1"),
	    .package(url: "https://github.com/apple/swift-nio-ssl.git", from: "2.0.2"),
	    .package(url: "https://github.com/apple/swift-nio-transport-services.git", from: "1.0.0"),
	    .package(url: "https://github.com/apple/swift-nio-extras.git", from: "1.1.0")
	],
	targets: targets
)
