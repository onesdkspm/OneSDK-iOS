// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "OneSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "OneSDKTianti",
            targets: ["OneSDKWrapper", "CommonResources", "TiantiResources"]
        ),
        .library(
            name: "OneSDKHappymaker",
            targets: ["OneSDKWrapper", "CommonResources", "HappymakerResources"]
        ),
        .library(
            name: "OneSDKQutang",
            targets: ["OneSDKWrapper", "CommonResources", "QutangResources"]
        ),
        .library(
            name: "OneSDKHiddentianti",
            targets: ["OneSDKWrapper", "CommonResources", "HiddentiantiResources"]
        ),
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
                .byName(name: "WechatConnector"),
                .byName(name: "XHSConnector"),
                .byName(name: "XiaoHongShuOpenSDK"),
                .byName(name: "YTXMonitor"),
                .byName(name: "YTXOperators"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/ATAuthSDK.xcframework.zip",
            checksum: "711793e8c12547ea3484941c3dea49e8cd2c30a2647af76f2bfc46494bab6c59"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/Bugly.xcframework.zip",
            checksum: "7cc0d384738efd8054d0fd1281af2262c101e34e904435fb4c8a969469762898"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/DouyinConnector.xcframework.zip",
            checksum: "c45ae1ad0bca71f980d30ac8b8f3a7afa9685860a8f27f788035a2df007da70d"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/DouyinOpenSDK.xcframework.zip",
            checksum: "0812ba23cf7b46a738459b3734fa646cb016f3d6bdeb35b47d52ee1d80056e26"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/FlyVerifyCSDK.xcframework.zip",
            checksum: "0ae386675f2e7d54b133508fce4888cbe8cc396dcf5e6adc0d2a61fd3668bb2b"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/FMDB.xcframework.zip",
            checksum: "bf1975c145fbf9f5bd67776c4c15ddf23e83304662178a61bad58962b52a163e"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/GravityEngineSDK.xcframework.zip",
            checksum: "66cf2c9a027ea5acb9cf52d7b1cd63ff83521a6214700440c6be47df52663cc1"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/KuaiShouConnector.xcframework.zip",
            checksum: "c0e2ff200c079d1390a1ea75daede5b29ab512aed043387d1fcff7aa4d4b31fb"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/MOBFoundation.xcframework.zip",
            checksum: "f9832f03392a6daa0e9dd56b507b4e254e135a631d06e124719911dad23b2073"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/OneSDKAccount.xcframework.zip",
            checksum: "c3a2c38a0600f5653fe6d51fc55a9f07ee04e42fe61b82b8382fda4514c9152f"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/OnesdkBaitianFramework.xcframework.zip",
            checksum: "c85ac28c7fe2a709532a1234c35fea9d11bebd33721282ddb5760b57bf718531"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/OneSDKCommon.xcframework.zip",
            checksum: "8d8e9adc4f54f2c8840d406bea772d245e3450651ea1e30fcd0189e4cbd393d7"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/OneSDKGravityEngine.xcframework.zip",
            checksum: "784d46c7bfd5db1131cbbf082002acbd7560b4bcf92f3b66c04610eab98fc9f8"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "188ac1c8d854444a532be2bfd348ad392ffa8e36245ef476ec8a48e545e3770e"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/OtherPartySDKFramework.xcframework.zip",
            checksum: "4507091ab1007d12f9d246d1510a8d52a2dc2707bd26cb91f38747dfbb4ce78b"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/QQConnector.xcframework.zip",
            checksum: "fd22ef82e8bf7a28f09e1af20cc3f589eafd91c4e2fd899e0faff93a8c02b862"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/ShareSDK.xcframework.zip",
            checksum: "eaa555446679bc6678dd087eebd34dbbdda60860280d2f0a75940f3628dfc602"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/ShareSDKConfigFile.xcframework.zip",
            checksum: "ff3eb1d96c65dbb6c7147d1f1750889e318d16a3f0ef5b37a375f87fece41ece"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/ShareSDKConnector.xcframework.zip",
            checksum: "21b58f6d54ec1085f4a67e70f185f6a1cbe8c13a6cbcb33ae8defae27e85a1e3"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/ShareSDKExtension.xcframework.zip",
            checksum: "be6f33b0321c6dfa6755c3e74c8389dd59e5f78eb02de74229241614e635e8f1"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/ShareSDKUI.xcframework.zip",
            checksum: "71fe175c322ff715859e2f46c7b682f1098a5a322a23c4a8ae1750269b2448e5"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/SinaWeiboConnector.xcframework.zip",
            checksum: "aec6e0676cefe2e02f31ad44bfdf50650b2a96b19bdd5562b48151198cfc9815"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/tapsdkcorecpp.xcframework.zip",
            checksum: "28b0c26fcd2d25f9c53b1515695404afb4132244d79b80910c68868366534337"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "0d3d5d2c1b425549a841fa3be2ad8261c2033b45fa365529e813eb0a65060cf6"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/TapTapCoreSDK.xcframework.zip",
            checksum: "ec59db63599c4e086bbe0a95573e86a35e3f5c952db299399cbddeb4e5bf69af"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/TapTapGidSDK.xcframework.zip",
            checksum: "f3ab657ea1c4bcd02f28125c3137b39063c7e84cd4f18c854e0b4b62598ec1b8"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/TapTapLoginSDK.xcframework.zip",
            checksum: "ea00a879d938b8d1fcc55e161d480964097b80c16859245e382fa14d85d06b3b"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/TapTapNetworkSDK.xcframework.zip",
            checksum: "bca481a7eb3ff10f4f6d91269a697af9b60b1ad7214443a2c4a32bc66fba5c5f"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "b52a480b38cf3760c7d37ba8794b6689a7930926422a7d9f943c2d971282396d"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/TapTapShareSDK.xcframework.zip",
            checksum: "758b064dcb4f6fd9af8f739bdf8a277d695f7e2c14f1111f896208d98afdfc27"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/TencentOpenAPI.xcframework.zip",
            checksum: "5d266ba6a5453043e6d133227e94b531a3c759b9d6e4e44e385566521dc7c400"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/THEMISLite.xcframework.zip",
            checksum: "d199401497fd2b06e5d0ab6b3c0f5df13e07bfc9853e0093efd12e000b7f252e"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/WechatConnector.xcframework.zip",
            checksum: "31e34c3655bfdc08227f021c5e98acf3585d8bd7e6fdd3a2bd5ad3a34ea4deec"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/XHSConnector.xcframework.zip",
            checksum: "04fd5f2355d896fee2ccfc0b71711b0aaa94d604a1839df56a9020c7f7c30044"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "d05fa59fd66718968acee01419e2b08d0e6572e80e5a46c3cd5f1ee911593a01"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/YTXMonitor.xcframework.zip",
            checksum: "8fd8dab67e27cb2278c4d4661d86f0d8efd79d3004fef026c48db7694112fd35"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.16/YTXOperators.xcframework.zip",
            checksum: "ed5ddc35c97311fd3c000e9001e86ad31e1be0c19eeaf5737d9ce8fb294649c6"
        ),
        
        // ========== Bundle Resources ==========
        .target(
            name: "CommonResources",
            dependencies: [],
            path: "CommonResources",
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
