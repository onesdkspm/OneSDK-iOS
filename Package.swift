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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/ATAuthSDK.xcframework.zip",
            checksum: "a7aca08f160c961b40d8df19a91dff2d0df84413b85b7e89c801439366b48668"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/Bugly.xcframework.zip",
            checksum: "6d873f0d6e4c0311289ae5df1530f568e6c26b64ee71348112cbbc15e7b17f05"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/DouyinConnector.xcframework.zip",
            checksum: "13a1be738b4b2d4f6bbd9522dcd91f77ba8155c9d5bdf33f34511e26ff5589c6"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/DouyinOpenSDK.xcframework.zip",
            checksum: "1458becc9d237723aa507d8be8c1e117e1bfed8c1202485d6461c35478db72eb"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/FlyVerifyCSDK.xcframework.zip",
            checksum: "b069b3f9b1cc7689ad8ed96a63b6328e65b63d1e17b3d39c9454858baab529b4"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/FMDB.xcframework.zip",
            checksum: "7c44d5a30f6878a84948fb0617a5a8ae13524d62c2de8af476e9a2db3d727e9f"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/GravityEngineSDK.xcframework.zip",
            checksum: "7ac5835c04bc417a2f6f50b83561ce9b64c28d8b2f5e5cafcaa31ddfbe176954"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/KuaiShouConnector.xcframework.zip",
            checksum: "67d3a6ab2881b3f9928a2753ea4fbc65a900acc52ba6fa1a021b21795ae7897c"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/MOBFoundation.xcframework.zip",
            checksum: "f5812cd4d1df5e99a92358f9a101d2a0bc365ec158bbca27b590692a0d437427"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/OneSDKAccount.xcframework.zip",
            checksum: "69802f4c24d46a12143580e0461e7e2df439f1503f4ee69bcfde3e4d52c4ea50"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/OnesdkBaitianFramework.xcframework.zip",
            checksum: "2227f18c5fd330768ad2b0ba6a308d478d8f85f497aef81fdaf13f1b3973f4a9"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/OneSDKCommon.xcframework.zip",
            checksum: "acb8bcad72b102a67b1a3f1d30109fcfc586ff7f7a39751c911147d76da087e0"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/OneSDKGravityEngine.xcframework.zip",
            checksum: "228164085da827f45e15efa7c512f6827aaa1b784cc53ef81bb2a8fe5e2f6688"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "6653b626b47efb8e2b03c1462df338b677b3438f5d540bf2a4bc5c068d5446da"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/OtherPartySDKFramework.xcframework.zip",
            checksum: "17f2b91388efc2b552734c8b4d803c9410cbfee27cb2f751f695f8280ea8f8c3"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/QQConnector.xcframework.zip",
            checksum: "9a5277ee6b99628e4130c3f6a9d28b3ad1f5694eaad1088ec37cf23064b71102"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/ShareSDK.xcframework.zip",
            checksum: "8022e668ce0800c60839a787d9bf678118a72563d7407b726c8097676776680d"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/ShareSDKConfigFile.xcframework.zip",
            checksum: "c45d697562dc029f867ce2f160584ee339321ea3cab0674d2eba81a6ae1a44a2"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/ShareSDKConnector.xcframework.zip",
            checksum: "bc1fb3c3d83db7056bed2f7d28e962b2cd5b5fa6e8d8946f5adea10e39b6cbca"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/ShareSDKExtension.xcframework.zip",
            checksum: "4c0bbacf4eacd402600e66f6114e6acb8b6be7931a8152e390563cc16423b9fb"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/ShareSDKUI.xcframework.zip",
            checksum: "bc787fde0a4a5eb04bac6157616d34486a37d886a7583a0554b5978ce8530a17"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/SinaWeiboConnector.xcframework.zip",
            checksum: "bee0b7e29a3f99b04f8182f3c1bf0bbc0d2c55df2a7234a40f7c3906630a2945"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/tapsdkcorecpp.xcframework.zip",
            checksum: "7c40dc3a33a2025dac3ee6c7f8da2fa5db11004031375850f297c42922e9b04b"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "aebe723d6b1f084ec49c0bf6bc94f81862abdeb8d5ce27bbc0af4ae9fc9d8533"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/TapTapCoreSDK.xcframework.zip",
            checksum: "7b159295f0604007ee4b3de9f8f9506dadf5ec8e42c332e3166eae9c5fa8e4e0"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/TapTapGidSDK.xcframework.zip",
            checksum: "6686cb315cb87ae254d7586618c953e98195c55425bc0a07116ce00e91325f6f"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/TapTapLoginSDK.xcframework.zip",
            checksum: "2aa2d1ea3a08ecca70f7912c454655e1e9d25ba17f94866e0cf279bc31f336e3"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/TapTapNetworkSDK.xcframework.zip",
            checksum: "60b36f3171051c66b86769679578aee6d785f3fd706f046e181d37c88e0c642f"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "91130253d65c1aeb5c4ca094cd0135fba909b61bb54fcdc2a930dea5aef2e8a2"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/TapTapShareSDK.xcframework.zip",
            checksum: "ac398a4a4b9e0e84a6f9bd4e8f16d7d5e8a6b703955e416f98056ac452116b77"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/TencentOpenAPI.xcframework.zip",
            checksum: "5c9953b63d965da8e0616c8a62db2632e0e73d3c531c4ec9cdc22cc8fbe8f2aa"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/THEMISLite.xcframework.zip",
            checksum: "f654e9ac4ba45ff4e5db86c894163bbe29bd36146d570ff9f9b4f868ded37e2f"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/WechatConnector.xcframework.zip",
            checksum: "bde13ef71da64d88f4d30469b2edf5845cf4e401715f6d47e1278b9ac3248f13"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/XHSConnector.xcframework.zip",
            checksum: "2a4288acceabbe48832a48be6fa673cc1a7b2019ee94b2149b4db4ab5711468d"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "7acb6e415f82f52f5830c32092f25897821ee3a1fbbd0a25ffd8e0524923b264"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/YTXMonitor.xcframework.zip",
            checksum: "613dbdf4f85733a5acb8589106d26c9283a66fb2e7b76194eb687bc7b133ecad"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.8/YTXOperators.xcframework.zip",
            checksum: "0b85ae2812f81b513da2334f43d0f3ec5a20fa8523e340a012b63f5b09ee24bf"
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
