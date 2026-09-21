// swift-tools-version: 5.9
// 此文件由 AdsEye 第三方 SPM 镜像流程生成，请勿手工修改 checksum。
import PackageDescription

let package = Package(
    name: "TradPlusAdSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "TradPlusAdSDK", targets: ["TradPlusAdSDKCore"]),
              .library(name: "TradPlusAdMobAdapter", targets: ["TradPlusAdMobAdapterLinker"]),
              .library(name: "TradPlusFacebookAdapter", targets: ["TradPlusFacebookAdapterLinker"]),
              .library(name: "TradPlusUnityAdapter", targets: ["TradPlusUnityAdapterLinker"]),
              .library(name: "TradPlusAppLovinAdapter", targets: ["TradPlusAppLovinAdapterLinker"]),
              .library(name: "TradPlusVungleAdapter", targets: ["TradPlusVungleAdapterLinker"]),
              .library(name: "TradPlusInMobiAdapter", targets: ["TradPlusInMobiAdapterLinker"]),
              .library(name: "TradPlusMintegralAdapter", targets: ["TradPlusMintegralAdapterLinker"]),
              .library(name: "TradPlusPangleAdapter", targets: ["TradPlusPangleAdapterLinker"]),
              .library(name: "TradPlusTPCrossAdapter", targets: ["TradPlusTPCrossAdapterLinker"]),
              .library(name: "TradPlusYandexAdapter", targets: ["TradPlusYandexAdapterLinker"]),
              .library(name: "TradPlusBigoAdapter", targets: ["TradPlusBigoAdapterLinker"])
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
            resources: [
                .copy("Resources/TradPlusAds.bundle")
            ],
            publicHeadersPath: "include",
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
        .target(
    name: "TradPlusAdMobAdapterLinker",
    dependencies: [
        .target(name: "TradPlusAdSDKCore"),
        .target(name: "TPAdMobAdapter")
    ]
),
              .target(
    name: "TradPlusFacebookAdapterLinker",
    dependencies: [
        .target(name: "TradPlusAdSDKCore"),
        .target(name: "TPFacebookAdapter")
    ]
),
              .target(
    name: "TradPlusUnityAdapterLinker",
    dependencies: [
        .target(name: "TradPlusAdSDKCore"),
        .target(name: "TPUnityAdapter")
    ]
),
              .target(
    name: "TradPlusAppLovinAdapterLinker",
    dependencies: [
        .target(name: "TradPlusAdSDKCore"),
        .target(name: "TPAppLovinAdapter")
    ]
),
              .target(
    name: "TradPlusVungleAdapterLinker",
    dependencies: [
        .target(name: "TradPlusAdSDKCore"),
        .target(name: "TPVungleAdapter")
    ]
),
              .target(
    name: "TradPlusInMobiAdapterLinker",
    dependencies: [
        .target(name: "TradPlusAdSDKCore"),
        .target(name: "TPInMobiAdapter")
    ]
),
              .target(
    name: "TradPlusMintegralAdapterLinker",
    dependencies: [
        .target(name: "TradPlusAdSDKCore"),
        .target(name: "TPMintegralAdapter")
    ]
),
              .target(
    name: "TradPlusPangleAdapterLinker",
    dependencies: [
        .target(name: "TradPlusAdSDKCore"),
        .target(name: "TPPangleAdapter")
    ]
),
              .target(
    name: "TradPlusTPCrossAdapterLinker",
    dependencies: [
        .target(name: "TradPlusAdSDKCore"),
        .target(name: "TPCrossAdapter")
    ]
),
              .target(
    name: "TradPlusYandexAdapterLinker",
    dependencies: [
        .target(name: "TradPlusAdSDKCore"),
        .target(name: "TPYandexAdapter")
    ]
),
              .target(
    name: "TradPlusBigoAdapterLinker",
    dependencies: [
        .target(name: "TradPlusAdSDKCore"),
        .target(name: "TPBigoAdapter")
    ]
),
        .binaryTarget(
    name: "TPAdMobAdapter",
    url: "https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK/releases/download/15.10.0/TPAdMobAdapter-15.10.0.zip",
    checksum: "72d3bfdbac025c33f25fe03bc24331147cbd1c4b4c2f53dd4d59dadf3f64d387"
),
              .binaryTarget(
    name: "TPAppLovinAdapter",
    url: "https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK/releases/download/15.10.0/TPAppLovinAdapter-15.10.0.zip",
    checksum: "54e139f83647e7a89412205d29e528a703aee5f5488be3f69f57d242914a9e11"
),
              .binaryTarget(
    name: "TPBigoAdapter",
    url: "https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK/releases/download/15.10.0/TPBigoAdapter-15.10.0.zip",
    checksum: "fab521dda2f371c0b291b060b2f67264506af8f9b5761565e906c339975d7a1e"
),
              .binaryTarget(
    name: "TPCrossAdapter",
    url: "https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK/releases/download/15.10.0/TPCrossAdapter-15.10.0.zip",
    checksum: "8d49c437799ec7dc68babe03100928a8c434c0a900e6d76977269983c13fc666"
),
              .binaryTarget(
    name: "TPFacebookAdapter",
    url: "https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK/releases/download/15.10.0/TPFacebookAdapter-15.10.0.zip",
    checksum: "d59b09a90894af1b6d009fa71cb45c836ee4f734c11f7c20350edd2ea9a26750"
),
              .binaryTarget(
    name: "TPInMobiAdapter",
    url: "https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK/releases/download/15.10.0/TPInMobiAdapter-15.10.0.zip",
    checksum: "c9e047bc45a355c35c3d8b37aef89e20707dc53de5ebdeafccf33cc77673a168"
),
              .binaryTarget(
    name: "TPMintegralAdapter",
    url: "https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK/releases/download/15.10.0/TPMintegralAdapter-15.10.0.zip",
    checksum: "eb444f90da90ab37cb481b1c896240204e9453de8935b07502683efbeca10ad6"
),
              .binaryTarget(
    name: "TPPangleAdapter",
    url: "https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK/releases/download/15.10.0/TPPangleAdapter-15.10.0.zip",
    checksum: "149ec1cc3c249b3565b830e525819424c0e30e01c0c53ef4b346c19a9cc62d8d"
),
              .binaryTarget(
    name: "TPUnityAdapter",
    url: "https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK/releases/download/15.10.0/TPUnityAdapter-15.10.0.zip",
    checksum: "8e5dccf2ed14feedc4432543b0c49bc03ace545d01ecc6cbc39a90156e8afaa2"
),
              .binaryTarget(
    name: "TPVungleAdapter",
    url: "https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK/releases/download/15.10.0/TPVungleAdapter-15.10.0.zip",
    checksum: "ce180a90d12dad1710ca804725f674f35912b44412a575bc7250428c6f5d53f2"
),
              .binaryTarget(
    name: "TPYandexAdapter",
    url: "https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK/releases/download/15.10.0/TPYandexAdapter-15.10.0.zip",
    checksum: "7dca621ee1addc81f8f6cb6876f975db5f45e8a0bb645d73c2e647683c016350"
),
              .binaryTarget(
    name: "TradPlusAds",
    url: "https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK/releases/download/15.10.0/TradPlusAds-15.10.0.zip",
    checksum: "97620d037775ce5c0c797bb8b4b0ce4fe14d70075928eff6b50e82bcefb8d670"
)
    ]
)
