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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/ATAuthSDK.xcframework.zip",
            checksum: "2674acee7c07a6db3ccde858aac63d6f3cdc08ff70aac0cf47f366bbf7457fb5"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/Bugly.xcframework.zip",
            checksum: "80720e97a6a64384f7e7ded16101acc0875e503cd60f4d238b0c0b50611df2c8"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/DouyinConnector.xcframework.zip",
            checksum: "7931b0e8eb41bf04083bfec54c03a56a544a8d6b07124e89bc2e31f4a926691e"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/DouyinOpenSDK.xcframework.zip",
            checksum: "b8ea142757bfbd6271fbbcb49979194cf38b9b16f14e92ac3e9ee2749d481788"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/FlyVerifyCSDK.xcframework.zip",
            checksum: "fee966746d4f94080cbd0ba23384ed58792e76e244f2e1c6509464fca523fd06"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/FMDB.xcframework.zip",
            checksum: "e7287cfb6d66c914f3336f2169a9695e7e39ab1fa2885d7cb714a7f76138666b"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/GravityEngineSDK.xcframework.zip",
            checksum: "f3084c414a37912139c02f1a1aa4a73e35c931292c62b091d304f57d41e72faf"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/KuaiShouConnector.xcframework.zip",
            checksum: "3fa1b380eb90484621c189678ce6c42958b2d59ffa732654b1b30c668007fc5a"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/MOBFoundation.xcframework.zip",
            checksum: "0cfdb15fb0d3d619d41fe66aa419954d7b131d1fe8cc0639584a618cedc70c62"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/OneSDKAccount.xcframework.zip",
            checksum: "3c23a2473241b9fec9444ad01e1b90de79ce503b0968437763a6aa8acbd313ff"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/OnesdkBaitianFramework.xcframework.zip",
            checksum: "c3e1018382afc30b9f4d210485a13c9ddbfa7c2b181e3c039a5a566fade359a6"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/OneSDKCommon.xcframework.zip",
            checksum: "55760850222ed5b7ed7c57a9deba97009c3ce42bc720eb32c666ece5c01536c1"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/OneSDKGravityEngine.xcframework.zip",
            checksum: "997f50e068d62c53cb6153b30a3734aa5389591df5dc7449fc829cca10af7afe"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "e36dabee099c6519c9364de7cd1c1ffa91856573fbd6b0278a2560bd026510e9"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/OtherPartySDKFramework.xcframework.zip",
            checksum: "e5e18ccf65fcac7d03835646f0ca281daa44d28f619cc82810bede82120c3095"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/QQConnector.xcframework.zip",
            checksum: "f2361dfdd32b753e57d8ea4a27e856c8028eec48ec944281464727b064cce2c2"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/ShareSDK.xcframework.zip",
            checksum: "32395cacea1f2480693e0da8a10eac08ccfb8eea30842e75c946c7758aaa4175"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/ShareSDKConfigFile.xcframework.zip",
            checksum: "132e558164fa320f6bc1669903e3629eea04904d7420e66fb9d29737c45f2252"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/ShareSDKConnector.xcframework.zip",
            checksum: "df01e71120a60485bddbf445e185630ba12c2f2a4d0a7df78f085c56de2fc9d6"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/ShareSDKExtension.xcframework.zip",
            checksum: "3787daa25f368d095120313edd5e62eec28d44a38d7435585b1432c47112e3d8"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/ShareSDKUI.xcframework.zip",
            checksum: "1225aa7a3ba5f583b4f350f67f979037a76d1195a8d9ba14e3edd32e0f8cc68f"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/SinaWeiboConnector.xcframework.zip",
            checksum: "f1f4242f40bccf5de2e6529b19e81fcacef9809d003b09bb07066bc024ebac8e"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/tapsdkcorecpp.xcframework.zip",
            checksum: "16d59d5c9a8e09cb1a0b046a8a45be2b47dd91e5bcba6ea265ad48cd658d863c"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "8645aa92b22e5669aac2e0762650276073fa9b9292d252ccc29619183c925233"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/TapTapCoreSDK.xcframework.zip",
            checksum: "eb4bb3121dc9da4c46b4128c4e7d543105dc1670342e74ee71b8338e682d0792"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/TapTapGidSDK.xcframework.zip",
            checksum: "08bfbe70d39161c7c9f9fb885468643df87ee544f34e1a62caba1dc5896bef01"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/TapTapLoginSDK.xcframework.zip",
            checksum: "2eba791a98b3574377fe924e9222e8d9680cc1807cf9771aee1ed5d4989b38dc"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/TapTapNetworkSDK.xcframework.zip",
            checksum: "2640d55c6e821da99758fce769dcc428739b90028bd2a6ef07f12c5582fcbb5d"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "cb98d621fee784b0131814f1b47b56e7e8bff603c74f206e649d89bde3c106d1"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/TapTapShareSDK.xcframework.zip",
            checksum: "d60d35a8604f40abd103b97de91b75f179c75f581ebd4e744291e8bdc8d98a5e"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/TencentOpenAPI.xcframework.zip",
            checksum: "e227a51da8e30b3ebb32d9656652095a9a62ee95da9f7c5066ee0c4a44d585d9"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/THEMISLite.xcframework.zip",
            checksum: "7e3d6fcee2df3182e0bceb60c9daa4e55a22ac2a51332db0b53f52a9462f6c15"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/UnitySDKManager.xcframework.zip",
            checksum: "02949e32ecb175bba7b8e3258817f2a9efd9371389fbf5ff967fb0a2dad26617"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/WechatConnector.xcframework.zip",
            checksum: "1d3ce87ecdfd8da32686ce57e16babcb4749e6a856e53110ccb748a632969851"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/XHSConnector.xcframework.zip",
            checksum: "62ea1f0a4c057227f9e83f81194ae4b23222d4266b2c6e860a7013418509478c"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "522e6b37c8a78e88eeeb14f1689344a0e75a9cb3b7e9aa805872b4428b873570"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/YTXMonitor.xcframework.zip",
            checksum: "cd60da65eb42359d08f69d509d6f556735949f8a3f598cd5fa8c4976357ee867"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.1/YTXOperators.xcframework.zip",
            checksum: "8a9a01d847ecb1d71d8c3898a87fa0bc6947b82435163ad14bfbd263dc013162"
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
