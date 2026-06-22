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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/ATAuthSDK.xcframework.zip",
            checksum: "5694d325ffa9cd9ab98f78e1c70c99bd80f435c32fa9f19cc3b0977c918333c1"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/DouyinConnector.xcframework.zip",
            checksum: "c4af342ce36166a3f891f1fd73d7f09a3fa1c584e1c9dc34588230fc80d41913"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/DouyinOpenSDK.xcframework.zip",
            checksum: "95a85a27048d6c23c13a61c7e67e6d7eb0896edb942d69cccb046448587d25f5"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/FlyVerifyCSDK.xcframework.zip",
            checksum: "0ca9dc518625612f242b34de30f46a3cea461494c716b6d72110ce195879d98f"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/FMDB.xcframework.zip",
            checksum: "e664ac20b51329b8041d51768ddd029440e86450aad988199bf810afb2c29670"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/GravityEngineSDK.xcframework.zip",
            checksum: "2cea8ed692745c1f48c88e2c8c978c1925b179f5883fda21da2385af55687250"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/KuaiShouConnector.xcframework.zip",
            checksum: "cbfecb9a62e9be644758818c78cc3d5db744348d31eb0f73a3d4d9f277e6ffc8"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/MOBFoundation.xcframework.zip",
            checksum: "92c9a8d745c15a2829c8d66e19f65470c8a2cd1c645818240632164e4d70f0ec"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/OneSDKAccount.xcframework.zip",
            checksum: "06ec2f802488b5107d156d4b6d2b52d4992d5648eea46d2a9ac1d037d8b88060"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/OnesdkBaitianFramework.xcframework.zip",
            checksum: "210ba0f80a03eaf7731ff34be76390d4e3342cceb9e4418e9ba9619d46606111"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/OneSDKCommon.xcframework.zip",
            checksum: "5970f51ff52edfb7ade488572d276b369f57b7740418052b0f0000156456b7a3"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/OneSDKGravityEngine.xcframework.zip",
            checksum: "6f17335c630b8c79cc5d0ff6b68170c21f1fad0cd3939b0cd8d9a83734d292fd"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "718496146a17e52696325f4152abf324c7b582e61ff4019ea44318c70f86c38b"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/OtherPartySDKFramework.xcframework.zip",
            checksum: "d3af6f55afba82cc389b76a933c9ed087bf17231098725fcc028db06132c5453"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/QQConnector.xcframework.zip",
            checksum: "e2a621a82b63604d1a59f0098394700e6e69671b6af3ffb9a65363d792f80862"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/ShareSDK.xcframework.zip",
            checksum: "36ab921acc30e2c70658a7c5d14151610b202829b290a927224eab5bc2f0ad21"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/ShareSDKConfigFile.xcframework.zip",
            checksum: "e9bc7ca97b231e4152cd07980e08f7b566cf4df1c1dd6b7203ad1e8ba0b453fd"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/ShareSDKConnector.xcframework.zip",
            checksum: "5209215679d1407d918f904fad2f05463116b20f7a62cc7f6eef52ef29c464ec"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/ShareSDKExtension.xcframework.zip",
            checksum: "ae309f69249d67bb625fbe24c27186ab2b294be28b0c105b792ecca4d56253ba"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/ShareSDKUI.xcframework.zip",
            checksum: "d5f7655903ada015cbdb9473efe99fb236a2363835b3bddbaa93cd66fe307142"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/SinaWeiboConnector.xcframework.zip",
            checksum: "50c4cf87ec19ad81086cc2fe93855d3a0a48404c17161e18c12f0fbf1eeb5279"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/tapsdkcorecpp.xcframework.zip",
            checksum: "20f2976a931bc2a70f4cae9529a95d1b140d4ab5f7949e8fd29e340c4d64138c"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "a68370be5d35420cfb525f1d6b54ea0d1f2d6170938d5bd23ef482983252b362"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/TapTapCoreSDK.xcframework.zip",
            checksum: "83d2858a5e5c4aba7fd61997744c61b8b37a1bcb80c68d83cde3b9868295188d"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/TapTapGidSDK.xcframework.zip",
            checksum: "659c09ab6b942385c3d99d710d14b54064437306982096299814367878cc2f04"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/TapTapLoginSDK.xcframework.zip",
            checksum: "32201d51407e70ac29f429f16c6703db5101920901a7d24c95477e925935c1c7"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/TapTapNetworkSDK.xcframework.zip",
            checksum: "24c0695cb5c1c9e565b634dd6ac0712d6378f28c12723a182def0d1f684ecf4d"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "5ad6bf4d6440d57ccb9758a3f543ed7b39b1da60d98ad7e6e2eed2cd8b4447f0"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/TapTapShareSDK.xcframework.zip",
            checksum: "88d7b8e88f82f818ae97639054a8520b60e3f4a7b030903bfec40ee11c926e3a"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/TencentOpenAPI.xcframework.zip",
            checksum: "0f8d4cd1230555ed3129325b3207b4554e3d170863d8f26797a3d87f3bb49e07"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/THEMISLite.xcframework.zip",
            checksum: "63774b788024e38fe51becfb8904d098b3942830419b03d429f35092d666c723"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/UnitySDKManager.xcframework.zip",
            checksum: "b15f9cb3651189fd608ca45bb29d16fb11072fc103ae2838774455ec15e10dbb"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/WechatConnector.xcframework.zip",
            checksum: "a29f69bea3a042a0e87cbe1d1e85cc35882ce795ff9768c1be8a3fb2459b1420"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/XHSConnector.xcframework.zip",
            checksum: "3dbc408a25b98cf8c51af7c38ee55d2e3b53cafb738830be1b98da88532503e5"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "715a73ce049b733db1828f6b4b9867e5d532a10ddae272b375c34712f511e44a"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/YTXMonitor.xcframework.zip",
            checksum: "47565e40ebf880b19e76f7e553a989d1b3fb1a2eb71191de06359594dbf25fa5"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1469272/YTXOperators.xcframework.zip",
            checksum: "7a3bdd6035cbf84f3c0a10dc30d25f4e25a42c6f669b4b30fae7f2cb451f9d20"
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
