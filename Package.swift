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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/ATAuthSDK.xcframework.zip",
            checksum: "461ce926ff4dbfbb23db5591b9487ee17de6c6d605d3fb3cf82580d3f5bfb5f3"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/DouyinConnector.xcframework.zip",
            checksum: "203ff4cff104e4552cc5b1b8557270a8385806dfbd15d1828cab70ca380429c9"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/DouyinOpenSDK.xcframework.zip",
            checksum: "c499c20173883289de1f77f01adca6c27ea6f6ac65bd309cdb4dba136aeb95bc"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/FlyVerifyCSDK.xcframework.zip",
            checksum: "b4f0fd872af308734fe13c07a3e3bc5ead3aebd99a9d3cb4589ddcd5fd2511f7"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/FMDB.xcframework.zip",
            checksum: "8cb896019250af4776720d0048f73b99c77b4a75708e470e0f6b4fab235b7fb3"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/GravityEngineSDK.xcframework.zip",
            checksum: "33a6063b86fa724ae573a1eacfafbfe4c96dd46fe1e448467f1751a08dd11786"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/KuaiShouConnector.xcframework.zip",
            checksum: "229b5592b0b03a19f33f9ffdc233907669d9b7521fdb551034f1d8074f5fdd6f"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/MOBFoundation.xcframework.zip",
            checksum: "68d19ecaad72adc590ebce53d6783e86abc40efa6743935e0dbb346a4134dcdf"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/OneSDKAccount.xcframework.zip",
            checksum: "0f76ffa04f53c0bc6683ee60724fcc4f75dba18869e1688625dd431ecb40c922"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/OnesdkBaitianFramework.xcframework.zip",
            checksum: "51fb2a904309ce595ff913451d84928f371fdda6c56eaf7914b7da9e5fbd0a50"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/OneSDKCommon.xcframework.zip",
            checksum: "dd60a66beb38e9da0399b3ff28c5cb94b5418b2207985b39b7d7df4b87423ece"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/OneSDKGravityEngine.xcframework.zip",
            checksum: "0c17ff0c10446f82a36b41ed3b6ad056456c3856b052a7c31be2c183a6de6ba0"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "175d8528ac9072099dbeb7ee1fc9320f24bf976fed2405f042fc205e8d498a98"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/OtherPartySDKFramework.xcframework.zip",
            checksum: "c2ffd36896edffdc32729108f9f6875e775bca8f57d86e101a1d38fd6be20fa0"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/QQConnector.xcframework.zip",
            checksum: "03efd060514651bd65fc05e25ae818a34050d1b3aa5d0a49a464431aaa399158"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/ShareSDK.xcframework.zip",
            checksum: "b519ea8aa1b93ea3632f8843f7519e6cac0a6a42fe603f9f85ae7ccd4e22655d"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/ShareSDKConfigFile.xcframework.zip",
            checksum: "a21e41ff2092bca306a55cf8d421006a46e6bf2462c9a30e7de9955ae1c174db"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/ShareSDKConnector.xcframework.zip",
            checksum: "ee46bd96f7f0998f1f074d33e408f26e3baccbb664a56440c4248b83d724525d"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/ShareSDKExtension.xcframework.zip",
            checksum: "46c2157574be1a9fe77259ff2936a29ec9d5380754f96f9198141632e7428aa4"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/ShareSDKUI.xcframework.zip",
            checksum: "0dd80b554e98a37125bcaeac036de57db25deae506180c7cef60336c8725782f"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/SinaWeiboConnector.xcframework.zip",
            checksum: "6a88bf660e26b3c387c74d1ab0bcc1dc6d0b3a3bea34a228d62032f7dd4a6831"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/tapsdkcorecpp.xcframework.zip",
            checksum: "33c639f6df4a380d3970967839b2b98fa09a68a768912a8f013fab2d5214daa7"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "ecc5952c48999daa7f421025212a00afd1049bcd7f48a9ddb8499d085b2b692f"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/TapTapCoreSDK.xcframework.zip",
            checksum: "ae257d04c526b3b6cd68d1b8d2d0783322ab34fc037ec84473b53daf8fddad5b"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/TapTapGidSDK.xcframework.zip",
            checksum: "7da1793f266e03a375b239e9ca10a2f008a41d246d0d018e18d3392ccaa03bff"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/TapTapLoginSDK.xcframework.zip",
            checksum: "a3ac354745836abdc8da3504c1bd10228ec9f921f581bb2f0315de4643aef4c1"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/TapTapNetworkSDK.xcframework.zip",
            checksum: "3aa347f6e9a133e0447a2cecb1c0891198a0ef1776fb73a8eb033a03f0b52f6d"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "86786859a2a17b28ebc11823e88cb9e7232d92aceddfd1aa1bf173dd7b874d75"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/TapTapShareSDK.xcframework.zip",
            checksum: "190d751b5aca9ed3762194d834e0232e452d3ea67027e3803eb7a6582635429b"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/TencentOpenAPI.xcframework.zip",
            checksum: "4080de40f7aa8abd342b7d88145f953bb0b127fb5536207350b8a8310fa7e455"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/THEMISLite.xcframework.zip",
            checksum: "0ee7752f71612089af80c7817e5ec13ef3ea5f421d7d7dda2390da1ead599879"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/UnitySDKManager.xcframework.zip",
            checksum: "7d535713882200cfa83cf7f311855f6e6c514327cc135deb093433adcadc4d93"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/WechatConnector.xcframework.zip",
            checksum: "65dfe287d7f81fd13dfb7713055b0b5b643643bdb77f1248dcc655ead88b30d2"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/XHSConnector.xcframework.zip",
            checksum: "55f4a33f7c6f1473dacdbd428b9ebf62746762ace73f817e922d0f171356a1b9"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "c323e20aecfed1f7ae9ab5b791080cd904a754f89fbec3a7ce5425950dc322e7"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/YTXMonitor.xcframework.zip",
            checksum: "303fd4a9ec046e05facbbf2d795221ae014640fbb994accbcde27ca88ef019ae"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481012/YTXOperators.xcframework.zip",
            checksum: "f0fd9859d43a9865dd732cd828c7fe9bdec607bc233f26ee9310c5dc5affb2ff"
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
