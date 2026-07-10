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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/ATAuthSDK.xcframework.zip",
            checksum: "620dbaac3c5a1ffd40554068e03d61103f4bbc1e1d9f310821a913e793643815"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/DouyinConnector.xcframework.zip",
            checksum: "6f2e746f8a4302b1e42cea092cdc71b0e6a03bb53387e1a88fbbdee968cdb051"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/DouyinOpenSDK.xcframework.zip",
            checksum: "f47626484a304d0f042e07a467d82954c44a58a5e55b5d8bf6e960b0dae896c3"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/FlyVerifyCSDK.xcframework.zip",
            checksum: "6758c9dae3798730a2b983d604a5d76b6073ff37a38c174d07012741f59238b8"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/FMDB.xcframework.zip",
            checksum: "211e0196fe08752bb39dc28671161402304fe744af1ba819da71aafdc4964b2c"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/GravityEngineSDK.xcframework.zip",
            checksum: "d4e3fd296835ecb58b84f04edf3ebbd4b4f006611416b10b9812c3b8daf24478"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/KuaiShouConnector.xcframework.zip",
            checksum: "fd18674a1c77e97022a3a20d942d9714d4537044822111c04c55467a54f92b19"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/MOBFoundation.xcframework.zip",
            checksum: "0610a4a258308f7faef5a37760ad5a3a04e0f358506943a21ff15ff2249f2129"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/OneSDKAccount.xcframework.zip",
            checksum: "d1911811b6a49499a4c36dde5f61c09cfca0b6802cfd6806594f8eba500553e1"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/OnesdkBaitianFramework.xcframework.zip",
            checksum: "c96da68964fe7188cbe97d56655af524e457e65c736a48bf25c07be4a2f88714"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/OneSDKCommon.xcframework.zip",
            checksum: "1376ee0d28675f770fb093be39dd9194fa56f47291af1fb1dce1e915371725e9"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/OneSDKGravityEngine.xcframework.zip",
            checksum: "e28cae030618f02ee0830cc74053a36a21bd8ad3f62dc3f942b712763f9e6820"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "ea5215ee054c164a4d194922cff7e7b9785a3892047552369f4003c068225554"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/OtherPartySDKFramework.xcframework.zip",
            checksum: "c6e8c98205371efdc131303d298088947e3784a44edb99df2a40e2661af7c561"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/QQConnector.xcframework.zip",
            checksum: "886731f454d88f13b73a564023dee9d94924dc022704b86a007278cd28cacbb6"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/ShareSDK.xcframework.zip",
            checksum: "6667a089aa7d0366f28cf5098b6ccf4a36e8ffee53bc0db51caf734eb962c62f"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/ShareSDKConfigFile.xcframework.zip",
            checksum: "18285056f2f59a67f740a1bac74453fe10a0ba7862c5f3213c764c8593e4f01a"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/ShareSDKConnector.xcframework.zip",
            checksum: "4b6a96db1b880b58a87f424ce299431dddf0e28d1003d2427e9204bba60c8df8"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/ShareSDKExtension.xcframework.zip",
            checksum: "d948f72fd811a512bc49870de3a98e072e7039604751fbf1273490e08fff4a08"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/ShareSDKUI.xcframework.zip",
            checksum: "a9a5455de98c43c47fead3eb32e176d7dc9ea9496093ed6221c0068472040a76"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/SinaWeiboConnector.xcframework.zip",
            checksum: "aa85bda0cae3902aef285e91341592be9e07cf9ee0c09bb833fadc8eaf37c8c5"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/tapsdkcorecpp.xcframework.zip",
            checksum: "8f3826602f6a1e1566402a6c68070b9260e739450b66d31e79c010e168a32794"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "77c0c5775a35c4714d807021c8bfe2e33eb13e9518b77ec1e30ebdb59ce89e65"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/TapTapCoreSDK.xcframework.zip",
            checksum: "c5c1f348962a7f0b1eaccaf435f1cd3b270b692d31594a97d790a4e70c487b22"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/TapTapGidSDK.xcframework.zip",
            checksum: "68a51bfd5ecbcac5121d7b8ed70e3a358f14ce0f0ebf9180027a4017b22957bd"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/TapTapLoginSDK.xcframework.zip",
            checksum: "1790ca73d8cb43363d858d3aaaa74d2f99955d8f1edb0ea79030f106dad2a63d"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/TapTapNetworkSDK.xcframework.zip",
            checksum: "25f805146630470ccf65de0634c5605b54c11964abfdb8e505d91ee7546edc8b"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "316f0d37aad41c39960f3e71854517ed1cd862687529bd867811776a07e796cb"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/TapTapShareSDK.xcframework.zip",
            checksum: "19338d39179b035939661ff6cc66b5179c77ae1ab15ca7e759ad6424da95d3bb"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/TencentOpenAPI.xcframework.zip",
            checksum: "580d9a3261cd0010aecfca4d5e757e51f32d4d1aeb07b8567c36d5be78f95b3a"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/THEMISLite.xcframework.zip",
            checksum: "c3e9fb8b02e595ad996813ba37369cc948e2ec7b60af4482525ea28901ef0cd4"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/UnitySDKManager.xcframework.zip",
            checksum: "629de9c1c3a145b7e90cd9f4e715d49beb86a094aba7f8beb61a3789b3d271c8"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/WechatConnector.xcframework.zip",
            checksum: "c14b32b053a39e493fe54f67b57758b5dc90d25bbdd0c7e9e545e175f5b34c53"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/XHSConnector.xcframework.zip",
            checksum: "125eb177b083002403fcd7afcd69d404d726fa4be586a6691c1a03717eb2f5e3"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "9ec781023b924fc263111fd5998630c11ad40ffad999c4d82c40dfa6577b7b08"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/YTXMonitor.xcframework.zip",
            checksum: "b7ec320676b45e191527bb6944b1eb7496c38749f46b7699baa8cfc986233891"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1483029/YTXOperators.xcframework.zip",
            checksum: "9d8a2edb3d9cb42cd0598ea0a4d975b41f3ba246f9963b0558236da061bc94bd"
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
