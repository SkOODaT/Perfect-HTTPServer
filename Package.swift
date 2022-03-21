// swift-tools-version:5.2

import PackageDescription

let package = Package(
	name: "PerfectHTTPServer",
    platforms: [
        .macOS(.v10_15)
    ],
	products: [
		.library(name: "PerfectHTTPServer", targets: ["PerfectHTTPServer"])
	],
	dependencies: [
        .package(name: "PerfectNet", url: "https://github.com/SkOODaT/Perfect-Net.git", .branch("SKOODAT")),
        .package(name: "PerfectHTTP", url: "https://github.com/SkOODaT/Perfect-HTTP.git", .branch("SKOODAT")),
        .package(name: "PerfectCZlib", url: "https://github.com/123FLO321/Perfect-CZlib-src.git", .branch("swift5"))
	],
	targets: [
		.target(name: "PerfectCHTTPParser", dependencies: []),
		.target(name: "PerfectHTTPServer", dependencies: ["PerfectCHTTPParser", "PerfectNet", "PerfectHTTP", "PerfectCZlib"]),
		.testTarget(name: "PerfectHTTPServerTests", dependencies: ["PerfectHTTPServer"])
	]
)
