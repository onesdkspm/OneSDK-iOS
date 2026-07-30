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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/ATAuthSDK.xcframework.zip",
            checksum: "4b91b730b6c1a574c4d7172791bb97be30acb2337466f33b9b712258f100812a"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/DouyinConnector.xcframework.zip",
            checksum: "d1c1e472b1d19d20a7e12a8ed9da44d182473f3eea35d4701d623260c9460c1f"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/DouyinOpenSDK.xcframework.zip",
            checksum: "e76d08fa44a32e38706654ef452de95fa0abfbf936d18042673bfc78a441bdd9"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/FlyVerifyCSDK.xcframework.zip",
            checksum: "ff327e041f63117828fdc5029536334c0f9a70d9317f6be8395b8dc3323637b7"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/FMDB.xcframework.zip",
            checksum: "c8207162e4da9d9d956a0adf546aa675aa4c93ea0c331845d0949e141a8a5970"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/GravityEngineSDK.xcframework.zip",
            checksum: "195c8d56a8bd54ddacf1bb006db8f03c003df04683db242d944ed88e2bde572b"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/KuaiShouConnector.xcframework.zip",
            checksum: "5d3bc0f577841f10f4cf531585f246ee8619b830c053eb0f4810108edfe6796f"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/MOBFoundation.xcframework.zip",
            checksum: "debce639e9d10118ac1271727575de2e415adf83366b9911514c5606a721ebf8"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/OneSDKAccount.xcframework.zip",
            checksum: "f09b9279fc7c4d5f704bc0cfeb37b66aceb15b3929f28a9d0409b96bf2f636b8"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/OnesdkBaitianFramework.xcframework.zip",
            checksum: "2d6db52f51a09f9c3edec6ac8265afe0aa08fa326bf531a41e54d351ba0e4f59"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/OneSDKCommon.xcframework.zip",
            checksum: "d1f88162961af95586f3a9ca1a27ef65e76b40a284d8e3fb506b5262b5ee46f1"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/OneSDKGravityEngine.xcframework.zip",
            checksum: "35e7b309169b3d6c5bdec608558ea94b3b444b89d55c31b2d38d57aa318ef274"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "767e1d5f51a052d07603497856d8a2ea46a643ba8db9444dbe8b0643e48d3030"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/OtherPartySDKFramework.xcframework.zip",
            checksum: "bca05399b7d6cac3a22723c7b5dcd8fd974053d4fb466c91cfbfb8c5df6c57d9"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/QQConnector.xcframework.zip",
            checksum: "6713f4165fe60dcbc35616e52ba879b8aa3dc02ddccccad79689a854348a35f9"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/ShareSDK.xcframework.zip",
            checksum: "56f10c88fb9a8ccb4ff8e684e4923ba769cbd7b59686fa355de7680e72f1a562"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/ShareSDKConfigFile.xcframework.zip",
            checksum: "cb420727383f3ca5797ee62b9013e3564c459fef15164a0a8d34f3556adfda81"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/ShareSDKConnector.xcframework.zip",
            checksum: "49667cbe46e4b25e466b4899653813a0f353bc082ea58d696ec566eb42361757"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/ShareSDKExtension.xcframework.zip",
            checksum: "6b9a8027df569dd2c8004ad44eded8b62ff8341f360d97e8fc89471e40e5e49e"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/ShareSDKUI.xcframework.zip",
            checksum: "136810498943bfbe76e6b4c909800b1bba532305aa617dabe0369dc425cf71c8"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/SinaWeiboConnector.xcframework.zip",
            checksum: "bd814f1a03ec6079f915c532be85aa41dad843c6589daed6a1e96d94b11502f9"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/tapsdkcorecpp.xcframework.zip",
            checksum: "3c625e4433fbf98f07b6304aa7d9df0b6ef4c9cb78f1d8a8a32e678d63b97947"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "4d092501941c49eb5f1f33974b573b5f76e3b01d5bfd0500eaf96c9c3c6fd333"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/TapTapCoreSDK.xcframework.zip",
            checksum: "4c12207bbb806e8bfc60f58da2098883bee64994c1d7daf0493946a20c2f840a"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/TapTapGidSDK.xcframework.zip",
            checksum: "819390d82fcf54bfe4df65385ade76465b0d17811eed7ec8c71e52e4418b81d0"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/TapTapLoginSDK.xcframework.zip",
            checksum: "a84a6bf03941e33dc99a9183635ef775b0cc932cf3975bb234bc25990a3cd492"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/TapTapNetworkSDK.xcframework.zip",
            checksum: "afb955a69bfc718211b1b64573d21caedefbf61e5cbc742b42132d62b0743809"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "a7554a453fd6cfc0704ff88763103ae97761754ce95b1ac02d7da395d1b61b3c"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/TapTapShareSDK.xcframework.zip",
            checksum: "031fbd5f3baf9247d874ee5f8e31900aae066f8725b6f0a1e6c4057d1f02ba6f"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/TencentOpenAPI.xcframework.zip",
            checksum: "293fc1071c3c1f0649abfd00e7fff6a98fc3b107e1572e3fee7d24dd8188da56"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/THEMISLite.xcframework.zip",
            checksum: "2051b256e1e1a1f76ee3f67843d0638863b0a3d61367c18ed981843fb058892f"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/UnitySDKManager.xcframework.zip",
            checksum: "c8f58fc500ac31254a07786bae1e3550427bae7820ef930b82c58456df7b6840"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/WechatConnector.xcframework.zip",
            checksum: "15c8da4c70b94941274a6ec052b4a5395386246a55f0eb97d2984309ce5cb966"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/XHSConnector.xcframework.zip",
            checksum: "022b80f32a630bf1372fd25a558bb9327d2a4401ebeab900513c06c18965bf11"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "9ca8be30e469ac2e02ab1700528dc4a83823650be394b9000139784237a5801f"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/YTXMonitor.xcframework.zip",
            checksum: "0384413120f83dc89c0a0d9b9999caf374221d29d46f0814e1e2f0a2ac9d8494"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2/YTXOperators.xcframework.zip",
            checksum: "66393d3596e9b7df45e378ad01a653cfbbeb30df4a899d8e3733b406dc1b47f1"
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
