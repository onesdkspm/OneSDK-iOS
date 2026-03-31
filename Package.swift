// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "OneSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "OneSDKTianti",
            targets: ["OneSDKWrapper", "OneSDKCommonResources", "TiantiResources"]
        ),
        .library(
            name: "OneSDKHappymaker",
            targets: ["OneSDKWrapper", "OneSDKCommonResources", "HappymakerResources"]
        ),
        .library(
            name: "OneSDKQutang",
            targets: ["OneSDKWrapper", "OneSDKCommonResources", "QutangResources"]
        ),
        .library(
            name: "OneSDKHiddentianti",
            targets: ["OneSDKWrapper", "OneSDKCommonResources", "HiddentiantiResources"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/onesdkspm/UnityBridge.git", from: "2.0.0"),
        .package(url: "https://github.com/onesdkspm/BTWebViewKit.git", from: "2.0.1"),
        .package(url: "https://github.com/onesdkspm/BTLoganManager.git", from: "2.0.1"),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "OneSDKWrapper",
            dependencies: [
                .byName(name: "ATAuthSDK"),
                .byName(name: "Bugly"),
                .byName(name: "DouyinConnector"),
                .byName(name: "DouyinOpenSDK"),
                .byName(name: "FlyVerifyCSDK"),
                .byName(name: "FMDB"),
                .byName(name: "GravityEngineSDK"),
                .byName(name: "KuaiShouConnector"),
                .byName(name: "MOBFoundation"),
                .byName(name: "OneSDKAccount"),
                .byName(name: "OnesdkBaitianFramework"),
                .byName(name: "OneSDKCommon"),
                .byName(name: "OneSDKGravityEngine"),
                .byName(name: "OneSDKIAPHelperFramework"),
                .byName(name: "OtherPartySDKFramework"),
                .byName(name: "QQConnector"),
                .byName(name: "ShareSDK"),
                .byName(name: "ShareSDKConfigFile"),
                .byName(name: "ShareSDKConnector"),
                .byName(name: "ShareSDKExtension"),
                .byName(name: "ShareSDKUI"),
                .byName(name: "SinaWeiboConnector"),
                .byName(name: "tapsdkcorecpp"),
                .byName(name: "TapTapBasicToolsSDK"),
                .byName(name: "TapTapCoreSDK"),
                .byName(name: "TapTapGidSDK"),
                .byName(name: "TapTapLoginSDK"),
                .byName(name: "TapTapNetworkSDK"),
                .byName(name: "TapTapSDKBridgeCore"),
                .byName(name: "TapTapShareSDK"),
                .byName(name: "TencentOpenAPI"),
                .byName(name: "THEMISLite"),
                .byName(name: "UnitySDKManager"),
                .byName(name: "WechatConnector"),
                .byName(name: "XHSConnector"),
                .byName(name: "XiaoHongShuOpenSDK"),
                .byName(name: "YTXMonitor"),
                .byName(name: "YTXOperators"),
                .product(name: "UnityBridge", package: "UnityBridge"),
                .product(name: "BTWebViewKit", package: "BTWebViewKit"),
                .product(name: "BTLoganManager", package: "BTLoganManager"),
            ],
            path: "OneSDKWrapper",
            linkerSettings: [
                // iOS 系统框架
                .linkedFramework("UIKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("OpenAL"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreText"),
                .linkedFramework("MediaToolbox"),
                .linkedFramework("AdSupport"),
                .linkedFramework("JavaScriptCore"),
                .linkedFramework("ImageIO"),
                .linkedFramework("Security"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("Photos"),
                .linkedFramework("Network"),
                .linkedFramework("AdServices"),
                
                // 系统库
                .linkedLibrary("sqlite3"),
                .linkedLibrary("c++"),
                .linkedLibrary("icucore"),
                .linkedLibrary("resolv"),
                .linkedLibrary("z"),
            ]
        ),
        
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "ATAuthSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/ATAuthSDK.xcframework.zip",
            checksum: "2ce35896b7bd9822ea2e6a3849543beab09f4dab4aad898f0acbc37b65e2ea0c"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/Bugly.xcframework.zip",
            checksum: "77b148d37ee09d36af6a1c680dea61cb418d0a2a4a16ebec2390128a096a7ea4"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/DouyinConnector.xcframework.zip",
            checksum: "bbd0997a52ca8ab6f1d0fe89603dec8b2225d60fe24eacef10f8e6ec424698ac"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/DouyinOpenSDK.xcframework.zip",
            checksum: "0cba2b3d54a40919b115fa640e58e7178a75fb36d91f8570661ea2fd92e11634"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/FlyVerifyCSDK.xcframework.zip",
            checksum: "8018f0259f23c2070fd0747c30c5fd3ac62960e3781421f4828dcf0de8011a55"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/FMDB.xcframework.zip",
            checksum: "74e7e21399f0133e80992f7303ea8e525cb9a283d0387def695fbb9f6025bad8"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/GravityEngineSDK.xcframework.zip",
            checksum: "61794b508c2f1d9944b06a93856dde3bca3b44bf768bac3e6a3d82abff952501"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/KuaiShouConnector.xcframework.zip",
            checksum: "1b50de434059e428f96d534cb126ba872e036e9351e0d2dd1789874934c3b01c"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/MOBFoundation.xcframework.zip",
            checksum: "114a6bdfd746919010efffb0a7a8a563ad88a79aa9a1c723a24dbefe485a3e15"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/OneSDKAccount.xcframework.zip",
            checksum: "2023ddbbc94917f5cd0f8912ba941c3860d22b254101cae152df9577e211593c"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/OnesdkBaitianFramework.xcframework.zip",
            checksum: "4981a6ca7bf4c6fcfef92b6949fccddc3c75af982405b89c253fb92566f05bbe"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/OneSDKCommon.xcframework.zip",
            checksum: "7fb1841ee752ca8beae1087ccd9a252cb090ccaee0d8c640aba590955ce65df4"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/OneSDKGravityEngine.xcframework.zip",
            checksum: "fe689955049dc8618e4f7ef3b15fe6bc4fcc6e3aa0eb5584d6aecf022743d567"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "e1a225ff472ee8bb06a95bfb132e319bda1f0e0f071c5b2b3085d48c6853f7bd"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/OtherPartySDKFramework.xcframework.zip",
            checksum: "48a96c071e3e15692497359d7dbd8f84e9f2953810be51c5457619ac5cd98c85"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/QQConnector.xcframework.zip",
            checksum: "8d40586125f4aecc14c08c2f50280dcc93e0877978d6a6380e147b378ece6ffe"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/ShareSDK.xcframework.zip",
            checksum: "63f23926d786a33c35783c69057be2276aeb89bebc5a756ba24bf34c502764bf"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/ShareSDKConfigFile.xcframework.zip",
            checksum: "51bf336054d5f13fde80fcc6605d838bcda0e7204398a10799d77fc68b48b837"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/ShareSDKConnector.xcframework.zip",
            checksum: "1ddec073f6ef23bd21bd541729be61d6e7fe9ebf745a234384ccc3a0430df8d4"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/ShareSDKExtension.xcframework.zip",
            checksum: "f30858057ee06d8f2d81490aedcfbc92a36a46256a65a4c02ae339a4ff6de810"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/ShareSDKUI.xcframework.zip",
            checksum: "64611bd4f8a0c5ce22176773a8cd75b28a3b087445f454529fc1c8d7bafb7c02"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/SinaWeiboConnector.xcframework.zip",
            checksum: "e5cc3b15c35a942fb9f4d3c084a53ec1b7178cd870b6f1832579ebfe703886f0"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/tapsdkcorecpp.xcframework.zip",
            checksum: "2a36ec6d263d574c3e1f12a5131550e3be6fdcd05da18d1c0980e54e0eedd2d2"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "f5a20fcf9702cc39a126e5fcf33da61956421822bbd564c2ef3c80a201976e34"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/TapTapCoreSDK.xcframework.zip",
            checksum: "eccd09620602dbe98d2bbd42422034707c347a6f99ebc1bf86e02d362322afab"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/TapTapGidSDK.xcframework.zip",
            checksum: "e4cbc4b967bff8c834e0d973e182165de5fc72003fe4422336041666e14bb6a8"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/TapTapLoginSDK.xcframework.zip",
            checksum: "83c70b6ff4fc7081bbec820059afea8894c56f588ca8e921eb9f442e63f9357c"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/TapTapNetworkSDK.xcframework.zip",
            checksum: "6328e4dd8bb2112dd35c2d8b7aa01fbda8ae98758b7ebaf8f8c2a0b0c4ba26c3"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "507dda0bc7bf29f69cde29f247d969ab5690fea55b68ccf567ee9bdbaa48c543"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/TapTapShareSDK.xcframework.zip",
            checksum: "9fcc12df5170051c741a6932b5aa73c71f4ee1cc18c91d3839d8b0cfb5879f5e"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/TencentOpenAPI.xcframework.zip",
            checksum: "43e6f19679555ba30dc071f5011d3b3029772ae3d6eecb6bab5467f5452c0321"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/THEMISLite.xcframework.zip",
            checksum: "bd19b113e1e732bbf53f1477c7afce946658536de36ee999fe4b79e9daf5b8fd"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/UnitySDKManager.xcframework.zip",
            checksum: "785e52207e9c032003fed084929334ed86dd0244383b7f0e91192f7387fe9afe"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/WechatConnector.xcframework.zip",
            checksum: "1c2df5714ec6aa527012e50ecd089588e1733a3802e5b2f8e27e51825ea794da"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/XHSConnector.xcframework.zip",
            checksum: "d6cacbe5d26bf2e68d663e27b55633211a6037258510b807d4fd91c49bdc7f0f"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "935aab4fa36b5b26bd7a3feb7a63943960336c3825106ded7bd902d6bd09ca97"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/YTXMonitor.xcframework.zip",
            checksum: "6bdd80a4b40f23031799e5b463ef36be5118f08b125e8cfc8af9c2945642b254"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1412828/YTXOperators.xcframework.zip",
            checksum: "bbc48e99e733b261da11485e8f8ebec47c204ed029bf14a526049947c450ca5e"
        ),
        
        // ========== Bundle Resources ==========
        .target(
            name: "OneSDKCommonResources",
            dependencies: [],
            path: "OneSDKCommonResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        ),
        .target(
            name: "TiantiResources",
            dependencies: [],
            path: "TiantiResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        ),
        .target(
            name: "HappymakerResources",
            dependencies: [],
            path: "HappymakerResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        ),
        .target(
            name: "QutangResources",
            dependencies: [],
            path: "QutangResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        ),
        .target(
            name: "PjmResources",
            dependencies: [],
            path: "PjmResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        ),
        .target(
            name: "HiddentiantiResources",
            dependencies: [],
            path: "HiddentiantiResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        )
    ]
)
