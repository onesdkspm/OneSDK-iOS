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
        .package(url: "https://github.com/onesdkspm/BTWebViewKit.git", branch: "develop"),
        .package(url: "https://github.com/onesdkspm/BTLoganManager.git", branch: "develop"),
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
                .byName(name: "OnesdkBaitianFramework"),
                .byName(name: "OneSDKCommon"),
                .byName(name: "OneSDKIAPHelperFramework"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/ATAuthSDK.xcframework.zip",
            checksum: "e0f984b169f5a58e2e7a3ddd35e9596b920c41b31ca18e38c8e09f22be37bebf"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/Bugly.xcframework.zip",
            checksum: "67c667470e8adffc668a6c1e572de3ba19463812d65d7bb608d4f4c02f9d4fd0"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/DouyinConnector.xcframework.zip",
            checksum: "fffd0f858dd3c294ad8c9bb4517e78a5dc95bb1dff2bb5b3023b2e518c077c66"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/DouyinOpenSDK.xcframework.zip",
            checksum: "1d019b74046c015640a3d87f6d46609c655a8bc14802b1d631d6fe2f42cfdaa6"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/FlyVerifyCSDK.xcframework.zip",
            checksum: "4b41cb1c7353b203d12a1a4d71fabbc50482df2ebd0ac661a6c693fb161ae7f0"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/FMDB.xcframework.zip",
            checksum: "445578711c8318ff4692058810f8b428dbbf7f3eb8f70f39f6a9640facbcdc64"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/GravityEngineSDK.xcframework.zip",
            checksum: "c06cf4c26c27c27bd6dd75f9b3d3c49e3bcd6ca845fb852613587eea2e5b0fea"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/KuaiShouConnector.xcframework.zip",
            checksum: "fc7cd2b3b8e215e95dea3c6081de0129e83143a5571098f34d05bef839b1ba4b"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/MOBFoundation.xcframework.zip",
            checksum: "aa8653741e194e89d545c0cf76e2a4d0659bc184a84c9c6b1c8cde07ebede510"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/OnesdkBaitianFramework.xcframework.zip",
            checksum: "dbab7442a4080a7d3f01191b1a6a372ac682b12c4157e2df4a472ec5e792856f"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/OneSDKCommon.xcframework.zip",
            checksum: "871b3a6878f293a3e446686fde1493a7136451770b46651ba53570f86675de68"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "42b28d82ebfda06caa74398b75189e2c26f61a27a27e5164973f10b0682d39a6"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/QQConnector.xcframework.zip",
            checksum: "4d81076a4ef780bc7acf416a3a8598458a8632d52161aa7e4fdfd881bd1c9c44"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/ShareSDK.xcframework.zip",
            checksum: "ad44816060c7747f2aa68050ddcf6b7638b17d0f2a0373d95e3e6953b8adbcbb"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/ShareSDKConfigFile.xcframework.zip",
            checksum: "54514ed8cbd7d0c64271223b3616795bf4571f8d817261d2b2aeff24cea89384"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/ShareSDKConnector.xcframework.zip",
            checksum: "5a71bc4402c91319b961b7e62a224ab4d39b1984d59dcf695a2a7ee7f7a61a13"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/ShareSDKExtension.xcframework.zip",
            checksum: "e5328f476529c47287ea8693b618825082c0b6d7b3f86e38e6400fcb2ab5756a"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/ShareSDKUI.xcframework.zip",
            checksum: "bf2233940469968537ee13d763de9b04007670daa698af75b4f43206bd03c617"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/SinaWeiboConnector.xcframework.zip",
            checksum: "05219da26c68dfe91c2fe3a34b9115839613e9a4be94adab3c58c37a588dada8"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/tapsdkcorecpp.xcframework.zip",
            checksum: "d9d6832af3ef55bad008f3cacd55c5b9a5c374f028847ae40facd1477eac1b5b"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "233c4fc33d82db679e0e571761e247735f01e0e9bcd7cba99e64d38738a824f6"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/TapTapCoreSDK.xcframework.zip",
            checksum: "b05a064741c6a1f9b8ce26e3bc81c25d4e0a3ecbc7ce57d5c6aab87299181269"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/TapTapGidSDK.xcframework.zip",
            checksum: "d8c461f70461b3b3f834eddfccf4baaa17ec409d082e42d1429fc8fcb6864a5e"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/TapTapLoginSDK.xcframework.zip",
            checksum: "8cbaee9d74651cae2c4beb09e126168febb59062e7fbdd72023ba6b9351e5c6f"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/TapTapNetworkSDK.xcframework.zip",
            checksum: "da3be70cee4727eb7e14b366c56e27dcab2282a0549857f0ef59fee1682a1f71"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "b9396cfdac68e7e5b6eeea7aec7fc3d43e624efa02bfa46badee1e012adce7a1"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/TapTapShareSDK.xcframework.zip",
            checksum: "f15b774aad0c63a0fef2ac66ce4c365b376eaa30669498494d8cb407ebd5761d"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/TencentOpenAPI.xcframework.zip",
            checksum: "685200c7a6e736596ab067f0afc57eb6dafe620d2cd489297ad05b026d2fa6e2"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/THEMISLite.xcframework.zip",
            checksum: "70513d04883e02b6505957b6e3142bf0a4a6e8e6e62b0c579cb7d34ce1f577c3"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/UnitySDKManager.xcframework.zip",
            checksum: "c04523d2f7e76a066317298046131082ce35dcfd2a4df7ebd157a699e36bd891"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/WechatConnector.xcframework.zip",
            checksum: "d2b615f0b22dab55c1f57f51299b4cb7fdcdc38d4068be0bd4609f2d645c5c71"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/XHSConnector.xcframework.zip",
            checksum: "10580c9f6591c26bb5629a207c337212a04be749402d1458d1e03aa67900a0dd"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "eda57ef94784c19cf582a2d4b3b9f7e6195c1748b6930fc5e1b42d6b8a3e1a13"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/YTXMonitor.xcframework.zip",
            checksum: "3acf09835f42a2b6966921341ac6801393b1b105e3c86fd8bd0046cf6583506d"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410527/YTXOperators.xcframework.zip",
            checksum: "8c6157925abaa41b0a9bf6ff4b672de17b6001b1f02dfa520b1fbd69f323980b"
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
