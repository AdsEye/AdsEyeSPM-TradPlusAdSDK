# TradPlusAdSDK Swift Package

TradPlusAdSDK `15.10.0` 的 `TradPlusAdSDK` 独立 Swift Package，由 AdsEye 维护。

## 通过 Xcode 接入

1. 选择 **File > Add Package Dependencies...**。
2. 输入 `https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK.git`。
3. 选择 **Exact Version**，填写 `15.10.0`。
4. 将 product `TradPlusAdSDK` 添加到媒体 App target。

`TradPlusAdSDK` 包含 TradPlus Core、TPExchange 和运行资源。网络 Adapter 通过各自独立仓库添加。

## 可选 Adapter Packages

| Product | Package URL |
| --- | --- |
| `TradPlusAdMobAdapter` | `https://github.com/AdsEye/AdsEyeSPM-TradPlusAdMobAdapter.git` |
| `TradPlusFacebookAdapter` | `https://github.com/AdsEye/AdsEyeSPM-TradPlusFacebookAdapter.git` |
| `TradPlusUnityAdapter` | `https://github.com/AdsEye/AdsEyeSPM-TradPlusUnityAdapter.git` |
| `TradPlusAppLovinAdapter` | `https://github.com/AdsEye/AdsEyeSPM-TradPlusAppLovinAdapter.git` |
| `TradPlusVungleAdapter` | `https://github.com/AdsEye/AdsEyeSPM-TradPlusVungleAdapter.git` |
| `TradPlusInMobiAdapter` | `https://github.com/AdsEye/AdsEyeSPM-TradPlusInMobiAdapter.git` |
| `TradPlusMintegralAdapter` | `https://github.com/AdsEye/AdsEyeSPM-TradPlusMintegralAdapter.git` |
| `TradPlusPangleAdapter` | `https://github.com/AdsEye/AdsEyeSPM-TradPlusPangleAdapter.git` |
| `TradPlusTPCrossAdapter` | `https://github.com/AdsEye/AdsEyeSPM-TradPlusTPCrossAdapter.git` |
| `TradPlusYandexAdapter` | `https://github.com/AdsEye/AdsEyeSPM-TradPlusYandexAdapter.git` |
| `TradPlusBigoAdapter` | `https://github.com/AdsEye/AdsEyeSPM-TradPlusBigoAdapter.git` |

每个 Adapter 使用独立仓库，后续新增 Adapter 可以继续通过 **File > Add Package Dependencies...** 接入，也不会下载其他 Adapter 二进制。

## Linker setting

媒体 App target 的 `Other Linker Flags` 必须包含 `-ObjC`。

## 许可证

使用前请阅读 [ThirdPartyNotices.md](ThirdPartyNotices.md)。
