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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/ATAuthSDK.xcframework.zip",
            checksum: "ff37dd26a102785e41ed0bfb2b028637d2eb1fd728bef5f1bb91088082b7535f"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/Bugly.xcframework.zip",
            checksum: "c2dbeeb3c69b13c9e1d15a9c79b4320c3b60c7198cbfddde6002d0d77d66a88d"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/DouyinConnector.xcframework.zip",
            checksum: "c1601ea2a9b0cf33f793f086759767d8d52d2dc8462896a7948eeb8677b2bf05"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/DouyinOpenSDK.xcframework.zip",
            checksum: "4c80e512ad295e4d7f4f72c70fa33ef35f6d76aec65a58cdc55f7407a4669ec2"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/FlyVerifyCSDK.xcframework.zip",
            checksum: "471b2472e48a0eac58f42985b49fcaf9decf50c39b2aca37b2414fa5459de5ae"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/FMDB.xcframework.zip",
            checksum: "c62fcccc55c70fde514eacf0fc62237fcc5fa26897e8b729e1ea23c06c235977"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/GravityEngineSDK.xcframework.zip",
            checksum: "d660246e260b8daf649c3195ce9d09b9075dcbaf63d71ccf074f58862e562808"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/KuaiShouConnector.xcframework.zip",
            checksum: "47a5ef2de2f18f82d79ce32132ccaa522898235a74286805e339d9205d3ec4f7"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/MOBFoundation.xcframework.zip",
            checksum: "58964952ac3673add3b321ddb7fa1b5399935480e2631a1e2c38d35026ed4210"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/OneSDKAccount.xcframework.zip",
            checksum: "f773020ef22c02ad43063df08bca5f67c31544a6decb41525e12afff328a21d0"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/OnesdkBaitianFramework.xcframework.zip",
            checksum: "34c086c18a085cb5cd74f95e535ae52d8152d5b0dd80d6eb44c2f62f669d67ba"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/OneSDKCommon.xcframework.zip",
            checksum: "ae38c95e116f2152c724ae42a8e9e06e4d7766a2aaabe29d7917c983aaa08387"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/OneSDKGravityEngine.xcframework.zip",
            checksum: "c39248abfe1fec4b6ec149226ef2b32acc4d6b9833376924f8335e49528c3883"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "32a53a00703de476fd3b5573418219e566e4b44affdd55ffab546ee15e94b3ef"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/OtherPartySDKFramework.xcframework.zip",
            checksum: "0d7fc0bfc43715978253bf31d3d4aba7fc7531a0a20d9983169c83416bf0c528"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/QQConnector.xcframework.zip",
            checksum: "f5046862cc52c41f399991be38962e0b9097bc98775a0ae79b8c90f35e590392"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/ShareSDK.xcframework.zip",
            checksum: "b1922ac14c3679249854407ee2e3abfd06bd72ca1ff86146923bb07e12db175e"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/ShareSDKConfigFile.xcframework.zip",
            checksum: "485ce545a3787296ce8116f62dede2e99acd10526c8535bf330bf683aac33ee0"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/ShareSDKConnector.xcframework.zip",
            checksum: "6a69dcfe489a691cd3b52b8fd5e6120bc16f0a37b756a8c23684674785e813a6"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/ShareSDKExtension.xcframework.zip",
            checksum: "0a8beb094c61c308a8bb7a24b00582f7ab509d2c495a3e03deca16fd1ac643b3"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/ShareSDKUI.xcframework.zip",
            checksum: "153062595fb2816af38bcf24fa967eb3b5e4906a3d9826fc71be9510cb5cfb81"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/SinaWeiboConnector.xcframework.zip",
            checksum: "f67ece19186aecae23328b9c5275a96d8a9f44d0ce3a31d909fec32f44b7369b"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/tapsdkcorecpp.xcframework.zip",
            checksum: "cff2d9cb2a8bce80a9e47cbf242bbd9c9ae323c67e8b4d84286d18892e2ac752"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "351a5aaecb9aebc532a84eec69f0d61588fe0683229e55caa3969fbbea373032"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/TapTapCoreSDK.xcframework.zip",
            checksum: "8ca64e419b894048c77aea248b4d06cfc95a294b44689a4526a681ce07b6bce7"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/TapTapGidSDK.xcframework.zip",
            checksum: "93012a53ba01349ee56bcac1fbe819472c9fc251a68a200b593602e77f70637d"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/TapTapLoginSDK.xcframework.zip",
            checksum: "40fae389ee4958344a6ff6d444a650be3e56443ae75e827356af7e7b5e78d5d9"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/TapTapNetworkSDK.xcframework.zip",
            checksum: "4e6e884d270ef42013c2e1ff19e6d035616078277db940a4530a8bc438ba3a8b"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "f5bb4ba449ff0c8b1a173937722616d330a258ef314974793c2ec0518bc07b16"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/TapTapShareSDK.xcframework.zip",
            checksum: "b9fbf1e56935c4b9a8b91d4992c65af01b453167d2902439edd3608576f4f31a"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/TencentOpenAPI.xcframework.zip",
            checksum: "f36194edc45844dfec6f57b0d4f7f9f0b7f9c40977f62d1fb974fd2d2fbef311"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/THEMISLite.xcframework.zip",
            checksum: "35cb4fcf9978d18b914138b042c1d7dc383f1d990796d53630e9127788cde1f3"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/WechatConnector.xcframework.zip",
            checksum: "0d585afd9ac2ad2e9a6df6bd7d9211be45d6d27859258a77d0aa23ab4ee7f975"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/XHSConnector.xcframework.zip",
            checksum: "b9dc9325b0e94584bfa8a8e1a8940a1e5c3b8c53c02eb5b73e6186ced2d0e89f"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "6cc2f34c4338adad7b35378fe88d04a1376b6dc03505ffeeae660ff4fb5c1314"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/YTXMonitor.xcframework.zip",
            checksum: "97802f1f6cc12a68b93e5dd2064db76bc1e47d6477fe6adb86ac99c771cf55f7"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.4/YTXOperators.xcframework.zip",
            checksum: "9a3f0a56a3df38addfc0fbc37cc7132a8cf54143aa4b88beb1409c12c4f8bc15"
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
