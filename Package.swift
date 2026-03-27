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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/ATAuthSDK.xcframework.zip",
            checksum: "ee9e26b238729594b78a3dd9af47893732c596d406da5c911ccd172592a25931"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/Bugly.xcframework.zip",
            checksum: "f5d1308184e184e2804afe1620f34db0c7a209a78a93b7d95f228e2d7cdbfe01"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/DouyinConnector.xcframework.zip",
            checksum: "3d79b2c8425d1520481c9e0a0098c8a9de54f04db6e4a051fa00873f6532bdf2"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/DouyinOpenSDK.xcframework.zip",
            checksum: "2460a6902fa5481e298aa88dfb0c7a5874b9333c3cbd23008ee389af339657d1"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/FlyVerifyCSDK.xcframework.zip",
            checksum: "234e2ef6746825962feb818c3690224f60417c7add490e54ac445266ec612b7b"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/FMDB.xcframework.zip",
            checksum: "24e5642155be72db9718b42db7150b3879329be69065a48d156c0a9bd7bb99a3"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/GravityEngineSDK.xcframework.zip",
            checksum: "5431eb94de839bd939001846cd024fd0a0d2a28fa56f5922ed74099569635fb8"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/KuaiShouConnector.xcframework.zip",
            checksum: "ffd8a728ea85400ea33861c31e04c32eff8ca15f86454f87bf5d74dbea03446c"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/MOBFoundation.xcframework.zip",
            checksum: "2561211272cb75cb2f5149b3c4e07286e3b1b4d934ce8a92321e91e1b881b6da"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/OneSDKAccount.xcframework.zip",
            checksum: "135081c6e74cb812fc024e5099a2d04fcc8f30c5bbeadce7d3febe63e09cabd7"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/OnesdkBaitianFramework.xcframework.zip",
            checksum: "3c975c1616cda18388c1bd9ba9dcbca61bef2737c184de2ec72427f750d1d579"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/OneSDKCommon.xcframework.zip",
            checksum: "283f0fefe5eb91bffca61a5629b1e2d9e7b58c234134a853f242132e56e68fcb"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/OneSDKGravityEngine.xcframework.zip",
            checksum: "1fc8a80918fcf1db8e8aa8f7007d121e2fc7cf902cef6ed6e6eea05fbf68589d"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b4fb6ca7a94b389034d3bbb5d177f0629bff6fc319dacb5dcb6c21639971a46f"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/OtherPartySDKFramework.xcframework.zip",
            checksum: "05e55f604a726dc2404068e8df9913f85fa21ab9a2819bde696e3e246fbba8fc"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/QQConnector.xcframework.zip",
            checksum: "3f734544b48d4d69f0ad24a4ddf3fb9c57234c1f025d5141b130ab00898a6b96"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/ShareSDK.xcframework.zip",
            checksum: "9f7fe9ba49469db6cdfabe6a96d7070d007593ab419f402f15eea3acfd778c2f"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/ShareSDKConfigFile.xcframework.zip",
            checksum: "eb320b67b0127a7d0122f15985d4c745285417d769ff849e9da8a9b89b85f2c4"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/ShareSDKConnector.xcframework.zip",
            checksum: "985d3f2f39d5fff5b6269e980c3678d9021636be2a6c29e3a342b7f2f0fddf37"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/ShareSDKExtension.xcframework.zip",
            checksum: "677d2eb2fdc993617e2d0ceb32bcafd55692b3318716ca21f15c0549020aa100"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/ShareSDKUI.xcframework.zip",
            checksum: "971112a37f6a2f44fe9b3eb77a6cfedcc5cf15bdc4384470bb1263f530fe3279"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/SinaWeiboConnector.xcframework.zip",
            checksum: "241204226196f11ba76a31b5a6218466a15b2b4a38105f9b98bbd690984a4f67"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/tapsdkcorecpp.xcframework.zip",
            checksum: "79bae5d77bb7561900f8fb71c5a207c2b8feda58cf2b5581ae8c64688d02db48"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "69d3f15f9d15c6d8418992b33d1e51bfabc77b80c2e502465c845f15634b61a3"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/TapTapCoreSDK.xcframework.zip",
            checksum: "309df3faa7e146f4c32bdeeb2ede8caa24daac0c1a390aef4b0e0c2da42abe39"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/TapTapGidSDK.xcframework.zip",
            checksum: "4c5a60ee75637b6afaf7d10ac923bd4778900ab93af2a0a51ceef9a945d45544"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/TapTapLoginSDK.xcframework.zip",
            checksum: "a5c2ca11fcaac5b605ca9482ca0db3c5b5383aebd01f8100825789f8e960dde6"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/TapTapNetworkSDK.xcframework.zip",
            checksum: "b8ca7c106ed02b724c5fa3c6a339df233ca11f1e6b2b26cb6197fe7317ab88cc"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "88aa36ff9dea729fbb7235f26d1e13946b84eef5ceb1d6744814f9d29fd6b657"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/TapTapShareSDK.xcframework.zip",
            checksum: "92cb1a5ada80bdd9f35816ccf3a2f2539a314f4e8c819f00ff5e1d5b858f360e"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/TencentOpenAPI.xcframework.zip",
            checksum: "ad6a01352ca380a0eba8299bfc1a5138805820cb532207d9003aa7f5bac226e8"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/THEMISLite.xcframework.zip",
            checksum: "e01297ccdd998c9fe0f777bc1d063815ac6bab526930d5fa33e71d1cfe37e043"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/UnitySDKManager.xcframework.zip",
            checksum: "b65cc555a66e509661ab7a450bbff5a1d55ad378c8e3d30bd36736e267480897"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/WechatConnector.xcframework.zip",
            checksum: "854c190b65e0e912cd456dbba0875c2cf56abd4f0ee1111a5b9981e0fbd63552"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/XHSConnector.xcframework.zip",
            checksum: "ea42763df4f340db97b51d6f3d6105e769ec85467b861ad1d1d7a9ee36ff26ec"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "5db29f9bdb4317755113ecef5cd1a3f4ebe5f6636ce41756e1f5bcd7d79c875b"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/YTXMonitor.xcframework.zip",
            checksum: "ee0455f352bf4f031286a2d2f0a3cff335b25e831323f8b4c5c7d1af3b54aaa4"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3/YTXOperators.xcframework.zip",
            checksum: "3430845fc1481c8955accb5556c727738f1e5de770eae122146f1a506f3807a0"
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
