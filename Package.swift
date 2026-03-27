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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/ATAuthSDK.xcframework.zip",
            checksum: "62231aead94d1cd1ff310a1d453da0368c8886e7551fb910cd2ec9a32ebedc21"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/Bugly.xcframework.zip",
            checksum: "fc27c0e15276c88106846d22fb8adff4df3ef8fd48b2c7b7b86ff8dd0de4eb23"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/DouyinConnector.xcframework.zip",
            checksum: "aeb7c3096c2e0a7b7b3fcd7c1d9b1f7296b9646fa9450c212f07bd2c281aa30f"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/DouyinOpenSDK.xcframework.zip",
            checksum: "84f3725c1644644309a6d609bfabae586a56f465b4eb4b1b7bbd19c34db8c549"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/FlyVerifyCSDK.xcframework.zip",
            checksum: "63d57c052d90be2618e3bce49ea82c3a7929b330230ecb28acdfb8a7333baf08"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/FMDB.xcframework.zip",
            checksum: "288af416bacacffb365bb4afe2496ac939e7f836378e3e19d2101ca54d42f282"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/GravityEngineSDK.xcframework.zip",
            checksum: "5de6d3db3bd9d361ec8947caadc98482d93e146d01cd78adddd5cc0e4f801a03"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/KuaiShouConnector.xcframework.zip",
            checksum: "bb199edf96fa54ef538c5a2d861956cbd211989d0bff6b925d3ec9be55a6ab75"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/MOBFoundation.xcframework.zip",
            checksum: "193b4ffdc8e5ba9e8e22e60a5f0cbdb90d4fa7630a4207f0e973b348d10509d5"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/OneSDKAccount.xcframework.zip",
            checksum: "bb1ec0ad2b6d3c1ab62b951b49023bacc7bc6fd612560f3ae819210a4ed9db88"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/OnesdkBaitianFramework.xcframework.zip",
            checksum: "159d93b41d275cd3d95daf6a70b6f64776ded090bfd8b49159b82ddd8d592145"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/OneSDKCommon.xcframework.zip",
            checksum: "c54e56f1454d6ee22aeede1b6b841fc46481acf3c800ab8d2c72a3e180a1d1bb"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/OneSDKGravityEngine.xcframework.zip",
            checksum: "d0741a54a3e77f2717a59fa9296edc3f26bc4266d35bbd613fb9bdda19ac38d6"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "628abbfa824b41adbb25fe68b458a2dd3650f9d5dd8d186dcb47f0ed517cdeb7"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/OtherPartySDKFramework.xcframework.zip",
            checksum: "290655b3a254ed2cd21955414518e9bbf4a85a6b0f73a4650b7f5af695abb262"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/QQConnector.xcframework.zip",
            checksum: "111a33fac3aece48528df8c488b6dc671b842dbdbef9f942fec5750b2d748200"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/ShareSDK.xcframework.zip",
            checksum: "32578339c16cd6d91843dcf4ba7cf3f356add816db1cb7e5179d5fccada18b4d"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/ShareSDKConfigFile.xcframework.zip",
            checksum: "8e27d4c7639a43a18c35d104bc43c3da2e849673e6ddac48e2fd822ac98002b5"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/ShareSDKConnector.xcframework.zip",
            checksum: "a8abe556b18fa57c3d82fceebba55d52ff722a4ec434e11383fbbe1dfeff8546"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/ShareSDKExtension.xcframework.zip",
            checksum: "c9b2862f6d69bb1b57a3aed03355d0ed0332ec49e42df214baa6176d97ed9aed"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/ShareSDKUI.xcframework.zip",
            checksum: "c97750befbeb7495c90cf4834b2d75d936cf90a3fcec0be16127275413b50421"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/SinaWeiboConnector.xcframework.zip",
            checksum: "b76417c1bd5da8013332edbc788e6be83e52b40d6c593724ecd5b8039b87f8e9"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/tapsdkcorecpp.xcframework.zip",
            checksum: "c9dee2dfd5c814795254add6bf69ab069b3982ba7b6bc183b0c18adfb9185ae1"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "36bcdde833a6de24122fbd9b3fef1932cdedea19d7b9faa57e0a28611d7cf132"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/TapTapCoreSDK.xcframework.zip",
            checksum: "a5d64f3f17eecdd88cbd02508f6971d7937a4705929b890db5ea589b1ec4ba44"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/TapTapGidSDK.xcframework.zip",
            checksum: "3946fd0d75359b9556e83c06ea266a2709c578402ed3a4400228ad4274cbc3d1"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/TapTapLoginSDK.xcframework.zip",
            checksum: "9dd264ec3efba00ba5ce0742d80f7f462cf560c66f1ef00a56f87f1ce2aa399d"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/TapTapNetworkSDK.xcframework.zip",
            checksum: "980e711002aa1ee5b4476501fa69bfff898c30508b38964ba90aee0322b49f0f"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "3fd6ace1b4ce30ff15eec047ea6acea49884de4a5baf515b0aad250451a981eb"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/TapTapShareSDK.xcframework.zip",
            checksum: "5f1d978784632873f5f4bf440d787c6827b4329634fefc39dddbfb42b99aa051"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/TencentOpenAPI.xcframework.zip",
            checksum: "4c1b728d582d21f8af076ec937d03142b80842714f8ee3090014f045a17cde5c"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/THEMISLite.xcframework.zip",
            checksum: "95ac833e6bdf6679dd9d871ac5125df0ed5bb43c897d183157ce21846c6f4d4f"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/UnitySDKManager.xcframework.zip",
            checksum: "9f35066c11204013f238475b1a129929e152752d50cf34cc611c0d07d6f9724c"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/WechatConnector.xcframework.zip",
            checksum: "7f42146c78c3b32fbeb096c212a69f51c7521cab1cbe43413a93df2da247409e"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/XHSConnector.xcframework.zip",
            checksum: "39e293b5e1d5e45d447ae304509d18cd0aafe696dcd2d8ef8d1ed10fd8fcf760"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "9145141dc3561ff44e28161d8953159c20cc19811b351761515715fd1f1ea15b"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/YTXMonitor.xcframework.zip",
            checksum: "05d61edc9e47582729243f863ddf7e09761cc8956fe7c97d93fb9fd86caa0f62"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2/YTXOperators.xcframework.zip",
            checksum: "bf420a0ffc4c84334fd316929fa333d5dde53b402b976be1f3231765e6818980"
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
