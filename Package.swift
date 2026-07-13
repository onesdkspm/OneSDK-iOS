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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/ATAuthSDK.xcframework.zip",
            checksum: "4d180c89984cc9a3a4927e3fcbca54c96f95afc33b952ee634d2424ca5010605"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/DouyinConnector.xcframework.zip",
            checksum: "84cd1b34253edadfb7790db8ccbd49a917a8e175e4e9eb200276a4dedaa86698"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/DouyinOpenSDK.xcframework.zip",
            checksum: "ed4a106c3eae05321a18c70644979985f8c6427e42f39aaf641d6c14606c024c"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/FlyVerifyCSDK.xcframework.zip",
            checksum: "fcee3079aeb336fb67312b194c4be7f2a0bda5edcd96f37b7bd284cd01761e00"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/FMDB.xcframework.zip",
            checksum: "4b6bff23d11445c360e2c25c5a6966fa201438b634a96aba62296fbb35d37bc0"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/GravityEngineSDK.xcframework.zip",
            checksum: "dd8b1f5750dd1a30c44685614c5f349d0e4ebbbf4c71d90fa7bf7c16d600a170"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/KuaiShouConnector.xcframework.zip",
            checksum: "4b673bdca6c1fb1cbb2c038f6e5bccf648ed7c762b59bbcbc5a008d6de152f97"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/MOBFoundation.xcframework.zip",
            checksum: "612efd3d6dc109659533b2784ed8bd216566e1a73364ee07e161d2c65abc1697"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/OneSDKAccount.xcframework.zip",
            checksum: "d267479cfb36a4a8e7e914b71c0dd737c4bacdbd7203174b35b550a141499788"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/OnesdkBaitianFramework.xcframework.zip",
            checksum: "38909ad4da2aeca2f4f07cd55aa25a499956d3ffecb13c4167f90943784b3327"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/OneSDKCommon.xcframework.zip",
            checksum: "ef84c53b8528998684c47fd8e56ff159b3128065759393576883d3c2a91dd67c"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/OneSDKGravityEngine.xcframework.zip",
            checksum: "ff51381248bf9c845d0e86adc7b666ef4432b8273df7579597c644d9db1e47a0"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "6d735f3a153b946c5d8b2672a86f2593950441efc581b7410045d1f23b28f148"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/OtherPartySDKFramework.xcframework.zip",
            checksum: "648bfdb3603b49e05e884a10efd4300e0529314047b12dabefdeadded272c58e"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/QQConnector.xcframework.zip",
            checksum: "bb131935c2a07b6567371bea1f57d2eb06659957505254ba637f122eab56f727"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/ShareSDK.xcframework.zip",
            checksum: "bcf3ab1a028233f70df403dd6465deb669a6ffc9aefdac8981b7b518d46bf2df"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/ShareSDKConfigFile.xcframework.zip",
            checksum: "7bc15ba68c5343e70f5eb8b2238fb49eae8f23f7f61d1492f3004c74e6af6341"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/ShareSDKConnector.xcframework.zip",
            checksum: "e4a8d909d6826e319f5894b7a70b698c554b05e1c71009cea779fdf17c46b42f"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/ShareSDKExtension.xcframework.zip",
            checksum: "7fc66355a7d292c6d0fb90097699d7d96d63d7a3b415cf111dffb74b6de6614b"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/ShareSDKUI.xcframework.zip",
            checksum: "ded06a30dde05d7b691f7388c958ad5d11acc6146f6b4ce20b8b2f0258ce9226"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/SinaWeiboConnector.xcframework.zip",
            checksum: "3dc9e51453fcb09e63d6be7b62dac061e30bdb413275315b93f792f423e4b7c6"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/tapsdkcorecpp.xcframework.zip",
            checksum: "224675bd24387bd7efb938808b7aa4d2030d4e14ac8da97ec585cdfe157cd1f8"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "ce6b31ea2f932858fd024f33c5c83956c4ddb6326ece3ca2e195b84f78b9276b"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/TapTapCoreSDK.xcframework.zip",
            checksum: "c4cf300b2c1b497b2a67a557ee51512b9fc699f94b40cdee887641305e69c1a7"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/TapTapGidSDK.xcframework.zip",
            checksum: "03efc5e316c734b40552491b379dfbcf7657417020764dd8b3650dbaee43f436"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/TapTapLoginSDK.xcframework.zip",
            checksum: "6aeb8963b6d5a84b8306bf7f70d714fa14aa4255ca8981bb741e31359f49a6e9"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/TapTapNetworkSDK.xcframework.zip",
            checksum: "62d9955335166f165979bdbec6f2f6d7f70cf0e7db8145e1550662fd07ea707f"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "7b0cfd338aabd545c6730e74a1b02c10cc74536f75a26b110c200ca999976d5a"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/TapTapShareSDK.xcframework.zip",
            checksum: "656c91ac53704a363d2468544831e5ad3028968576aee0dd3f0144c0cd063612"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/TencentOpenAPI.xcframework.zip",
            checksum: "91679ce7cb63419cb4ac4db6d9cfbbead62ef352153e7be9c9c366fd5f5031ff"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/THEMISLite.xcframework.zip",
            checksum: "7e2fd1106c135cd24916492d31371fa036747346a2f8a686a6a1bc5836f187c8"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/UnitySDKManager.xcframework.zip",
            checksum: "e74b70f43e61a6c263cd08d33511d5854e870fddb7f6915464d4a66c07a11473"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/WechatConnector.xcframework.zip",
            checksum: "be5bbfe5bf7374992ea857102f2b9833d292c1f52458c26e49fd8f47e310c59c"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/XHSConnector.xcframework.zip",
            checksum: "38243b3956874e27c4d827609fb8acd2e84b0dc661be56785ad9742af91c0752"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "982e56a85f5773ebf05ca141242b99c96ba13cde5662299fb5a2674b6e43cede"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/YTXMonitor.xcframework.zip",
            checksum: "5c19e00bec31c04c61122c53f6c044e2d7300562d4642ae9f869e15b730b575d"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484189/YTXOperators.xcframework.zip",
            checksum: "4e27aa991f50fd9b2956ff21a455c0f2e182b9d6e76e4115a6d34a87b28444e8"
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
