# TradPlusAdSDK Swift Package

TradPlusAdSDK `15.10.0` 的 Swift Package Manager 二进制镜像，由 AdsEye 维护。

## 通过 Xcode 接入

1. 选择 **File > Add Package Dependencies...**。
2. 输入 `https://github.com/AdsEye/AdsEyeSPM-TradPlusAdSDK.git`。
3. 选择 **Exact Version**，填写 `15.10.0`。
4. 勾选 `TradPlusAdSDK`，再按需勾选网络 Adapter product。

## Products

| Product | 内容 | 媒体还需添加的网络 SDK |
| --- | --- | --- |
| `TradPlusAdSDK` | TradPlus Core + TPExchange | 无 |
| `TradPlusAdMobAdapter` | AdMob Adapter | `https://github.com/googleads/swift-package-manager-google-mobile-ads.git` @ `13.3.0` |
| `TradPlusFacebookAdapter` | Facebook Adapter | `https://github.com/AdsEye/AdsEyeSPM-FBAudienceNetwork.git` @ `6.21.1` |
| `TradPlusUnityAdapter` | Unity Adapter | `https://github.com/AdsEye/AdsEyeSPM-UnityAds.git` @ `4.17.0` |
| `TradPlusAppLovinAdapter` | AppLovin Adapter | `https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git` @ `13.6.0` |
| `TradPlusVungleAdapter` | Vungle Adapter | `https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git` @ `7.7.4` |
| `TradPlusInMobiAdapter` | InMobi Adapter | `https://github.com/AdsEye/AdsEyeSPM-InMobiSDK.git` @ `11.1.1` |
| `TradPlusMintegralAdapter` | Mintegral Adapter | `https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git` @ `8.0.8` |
| `TradPlusPangleAdapter` | Pangle Adapter | `https://github.com/AdsEye/AdsEyeSPM-Ads-Global.git` @ `8.1.0-pod.6` |
| `TradPlusTPCrossAdapter` | TPCross Adapter | `https://github.com/AdsEye/AdsEyeSPM-TPExchange.git` @ `13.8.60` |
| `TradPlusYandexAdapter` | Yandex Adapter | `https://github.com/AdsEye/AdsEyeSPM-YandexMobileAds.git` @ `8.1.0` |
| `TradPlusBigoAdapter` | Bigo Adapter | `https://github.com/AdsEye/AdsEyeSPM-BigoADS.git` @ `5.2.0` |

只选择实际使用的 Adapter product。未选择的 Adapter 不进入链接依赖图。

## Binary targets

- `TPAdMobAdapter`
- `TPAppLovinAdapter`
- `TPBigoAdapter`
- `TPCrossAdapter`
- `TPFacebookAdapter`
- `TPInMobiAdapter`
- `TPMintegralAdapter`
- `TPPangleAdapter`
- `TPUnityAdapter`
- `TPVungleAdapter`
- `TPYandexAdapter`
- `TradPlusAds`

## 许可证

使用前请阅读 [ThirdPartyNotices.md](ThirdPartyNotices.md)。
