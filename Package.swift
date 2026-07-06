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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/ATAuthSDK.xcframework.zip",
            checksum: "2480f8e455cf1026adfca7f79da48a0baeb295b48aaed7a682441cf505a4e89d"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/DouyinConnector.xcframework.zip",
            checksum: "12967c95abd0b37d3cdf46f943e02be942b6096e7f9efca34b10a4a066f38782"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/DouyinOpenSDK.xcframework.zip",
            checksum: "fa1a2c5a9cdfb82a13d83e099b3f0876bd01c02cff9502d9c80bd9c38feeeade"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/FlyVerifyCSDK.xcframework.zip",
            checksum: "98678f2da3576ab2d6a915cbf562822c380612b1cb9c5d1df9e46205c66d57de"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/FMDB.xcframework.zip",
            checksum: "2a4bb706953442bb0ef5f6db6cd933545ee4f4e29940b0f10c21d8b805bd9791"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/GravityEngineSDK.xcframework.zip",
            checksum: "9bf8d92054de407344dd4745ef56ec23f471d04d48858e18cd9963c56ef6068f"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/KuaiShouConnector.xcframework.zip",
            checksum: "3b916c09e6dba42cb1c6dd9edfa6136c980281ca0d5b1db49ea5652056706c57"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/MOBFoundation.xcframework.zip",
            checksum: "81bd5ef20829f954a5a71efa85ec12b78ca38afe9ec50857547720238c77c29e"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/OneSDKAccount.xcframework.zip",
            checksum: "a986f72ffa222180fbff415708edf67342dabb25d6086fb3e65bbd2c5eeeaf7b"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/OnesdkBaitianFramework.xcframework.zip",
            checksum: "38c620255de4fd92359118977d50ed971282bdedf3fc7f52df1760ff8964fafb"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/OneSDKCommon.xcframework.zip",
            checksum: "6154941d34878292b8d63398ea903e91319847de44668697ad8c309d87ae4f97"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/OneSDKGravityEngine.xcframework.zip",
            checksum: "5926aa4e56c3e45bd1c8db930d7a156d54d367f7209f48e7ab51ca94b964f122"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b3b2c45f30650fe7c76b166fc6312924324c0213c9f13cae6be5cb7b7680ebce"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/OtherPartySDKFramework.xcframework.zip",
            checksum: "3bd0db88a4b3fabc4eef48100e0a3c0d4f324990b98feb8bb2ede19d7d45be63"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/QQConnector.xcframework.zip",
            checksum: "325498693c6366beccbd58949d82f62effee9cb209f311a7df1ef36a38c0a43b"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/ShareSDK.xcframework.zip",
            checksum: "338ddc560c5689f415fcfb42d39d67f41dfef2aedf3ed393d7c2a159c91381e3"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/ShareSDKConfigFile.xcframework.zip",
            checksum: "3f1da6949166d4fc726604d3592239c56583d6992f093e02b64d833db5931e3a"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/ShareSDKConnector.xcframework.zip",
            checksum: "a4869ad970bd8fd9d553704ce116794204626ac8e451b4f91039e615788e65dc"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/ShareSDKExtension.xcframework.zip",
            checksum: "404cc5edc9531aed7d500cd5131a50ecdee4b9542716ca004ab1dc715037a9b4"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/ShareSDKUI.xcframework.zip",
            checksum: "e82ef6291223ba1816c9d327c4eb52af6399244e5e32c2fb802be95ac32387c9"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/SinaWeiboConnector.xcframework.zip",
            checksum: "8f28688b9ea0f200d1cb5311b31a58de155b1a08afbffa9eb4817503bf9e336d"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/tapsdkcorecpp.xcframework.zip",
            checksum: "4689bd9b96e6c910ad02d2fa26d41f62cee7670093b5645a967c71612be1bd8c"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "97c72b2983f0e394200780603843a4d1e89dad407434e76ca06ca2a316635b50"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/TapTapCoreSDK.xcframework.zip",
            checksum: "02721c8e736ac0c0bfe02412272f5ad85e9f62aad3852467c9c8e59675b49666"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/TapTapGidSDK.xcframework.zip",
            checksum: "d7ec84db8b7b061bb738b5244fec142a9849841d8d1adb43f33b382d65df9d3c"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/TapTapLoginSDK.xcframework.zip",
            checksum: "86d6d571f97899fba97d9d6b3901ddee877618866e99b7df40a17cdaebc34643"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/TapTapNetworkSDK.xcframework.zip",
            checksum: "54feacb396018cb8aa4070e41dcf0e65c2a5f414aae3282d4392f695f125b0af"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "151a98ea6d077c9e8d18a7dbfd66b1b3dac982c17bf0f082b5c33b75acd37cf0"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/TapTapShareSDK.xcframework.zip",
            checksum: "b7353450b6857ea99ff9f7cb9be75602d108ad4b89e41f6f01616dc63737295a"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/TencentOpenAPI.xcframework.zip",
            checksum: "3e3d317a494997b27b87ec315ba85723700e5230a280e42b4d7e967dd6eafa03"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/THEMISLite.xcframework.zip",
            checksum: "45bcc6c0cecb8897bee6cb3b4febe28a0f4ccc534a605df63e282a4881150ef3"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/UnitySDKManager.xcframework.zip",
            checksum: "ef8c8959eca9262a4ae20aa1fa3ca4d06a8da88350d96efd9800cf4735ec56a1"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/WechatConnector.xcframework.zip",
            checksum: "8305d1909583854ac70ffb7de60cb72bf0606af055fe9368d875bdb0a8f2668c"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/XHSConnector.xcframework.zip",
            checksum: "64c8d449d15700183c01e8b554d077dce651c24b5110a491736af7486e495760"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "31a12810cd5169ff5103e25f8ecbf02a7d96c1f58e3336441a88c21b1e57a877"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/YTXMonitor.xcframework.zip",
            checksum: "fb5816e9f08f32b06fa43fb140c2dd86594ab2696abc18a6a914210e1d81b81e"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1479571/YTXOperators.xcframework.zip",
            checksum: "e4c630175cc609cd62fac664b89d3306e17663e1156992c5415645c3e163e8f4"
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
