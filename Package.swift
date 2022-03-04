// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "GoogleMaps",
    products: [
        .library(
            name: "GoogleMapsBase",
            targets: [
                "GoogleMapsBase"
            ]
        ),
        .library(
            name: "GoogleMapsCore",
            targets: [
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GoogleMaps",
            targets: [
                "GoogleMaps",
                "GoogleMapsBase",
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GoogleMapsM4B",
            targets: [
                "GoogleMapsM4B"
            ]
        ),
        .library(
            name: "GooglePlaces",
            targets: [
                "GooglePlaces",
                "GoogleMapsBase"
            ]
        )
    ],
    targets: [
        .binaryTarget(name: "GoogleMaps", path: "./BetaMaps/GoogleMaps.xcframework"),
        .binaryTarget(name: "GoogleMapsCore", path: "./BetaMaps/GoogleMapsCore.xcframework"),
        .binaryTarget(name: "GoogleMapsBase", path: "./BetaMaps/GoogleMapsBase.xcframework"),
        .binaryTarget(name: "GoogleMapsM4B", path: "./BetaMaps/GoogleMapsM4B.xcframework"),
        .binaryTarget(name: "GooglePlaces", path: "./BetaMaps/GooglePlaces.xcframework")
    ]
)
