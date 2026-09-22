// swift-tools-version: 5.9
// 此文件由 AdsEye 第三方 SPM 镜像流程生成，请勿手工修改 checksum。
import PackageDescription

let package = Package(
    name: "TradPlusAdSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "TradPlusAdSDK", targets: ["TradPlusAdSDKCore"])
    ],
    dependencies: [
        .package(url: "https://github.com/AdsEye/AdsEyeSPM-TPExchange.git", exact: "13.8.60")
    ],
    targets: [
        .target(
            name: "TradPlusAdSDKCore",
            dependencies: [
                .target(name: "TradPlusAds"),
                .product(name: "TPExchange", package: "adseyespm-tpexchange")
            ],
            linkerSettings: [
                .linkedFramework("CoreGraphics"),
                      .linkedFramework("Foundation"),
                      .linkedFramework("SystemConfiguration"),
                      .linkedFramework("UIKit"),
                      .linkedLibrary("c++"),
                      .linkedLibrary("resolv"),
                      .linkedLibrary("sqlite3"),
                      .linkedLibrary("xml2"),
                      .linkedLibrary("z")
            ]
        ),
        .binaryTarget(
            name: "TradPlusAds",
            url: "https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK/releases/download/15.10.0/TradPlusAds-15.10.0.zip",
            checksum: "97620d037775ce5c0c797bb8b4b0ce4fe14d70075928eff6b50e82bcefb8d670"
        )
    ]
)
