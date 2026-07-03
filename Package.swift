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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/ATAuthSDK.xcframework.zip",
            checksum: "34456a992050584af6e21e936ffd86f9648e67dec1573f90f0bd048aee747c97"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/DouyinConnector.xcframework.zip",
            checksum: "ca717c16209db4f58e529d4460b6b869077e6f2acd0bdee45dafef025201e80c"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/DouyinOpenSDK.xcframework.zip",
            checksum: "75a5bdcbd8cf05ce08290e7d31f9f13caa73e94306006cd9609443282125393f"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/FlyVerifyCSDK.xcframework.zip",
            checksum: "715577652b45c1346161275798c2a6118072e3a308832e708be04cdfe26596bf"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/FMDB.xcframework.zip",
            checksum: "63c0baed7e2fa75bce75f5fa3644e440b6e35c7b7c2705f9ae543132dcee2b1a"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/GravityEngineSDK.xcframework.zip",
            checksum: "d6ce73ce090bc2a25e65cef700e172eef0a3e49d99c13361a435d8b9dd8195d6"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/KuaiShouConnector.xcframework.zip",
            checksum: "d8d6667569fe689a73e37f2953ff94980b3e64cac79973ef7d56b683f2aeebfa"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/MOBFoundation.xcframework.zip",
            checksum: "e950d2812c8b7b08e55db96206557d1c759f05fa4fcc67c5811bd6cfa07a60ff"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/OneSDKAccount.xcframework.zip",
            checksum: "e5d39fcb9a180ccb4549a1321baf2d04a59591756a3cf9dc115476c4de1d1ab8"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/OnesdkBaitianFramework.xcframework.zip",
            checksum: "2af69ca0ee6ebcddc21de4059b6b562217d24d6bc30d8f1147112313f0b63733"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/OneSDKCommon.xcframework.zip",
            checksum: "0f582246e1b5b4dd75f904209879a42bb142daabda96672055b96e6e4834d273"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/OneSDKGravityEngine.xcframework.zip",
            checksum: "1e97159735ef86e41e3394f84d2eefd27a320ee2c8b130324bd082bde19f71e2"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "83400c4526a56d0c53c3737bb8cf328bd3c677d18c13e10acea3c2665c4aa484"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/OtherPartySDKFramework.xcframework.zip",
            checksum: "16d9f9beaf998e2e0d6f164c6a7c18cd27e0311099fd0a228cbfce91cb1c9b06"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/QQConnector.xcframework.zip",
            checksum: "301c92dd4fb8fd9be5a4fa60eec32538430d3b2e77fe065b2f03fcc921bffe2a"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/ShareSDK.xcframework.zip",
            checksum: "8838d9663a01c9006be67b7c174b05dc711e0e3b2f83fd96d9cc842d3e01d42f"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/ShareSDKConfigFile.xcframework.zip",
            checksum: "ad20260533bc9bcfeb3f26cb80a6d7028edcb48fc31949523462ae2050543c7d"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/ShareSDKConnector.xcframework.zip",
            checksum: "eea82f9a24fffa8cf019f24ec7c13437f384899843904e8ef1119686e3489d72"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/ShareSDKExtension.xcframework.zip",
            checksum: "9809fe41d5ecedaa18670ad58aa4a8e2d076d9f52abc62f8d6e103aa37758915"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/ShareSDKUI.xcframework.zip",
            checksum: "5f59965cbba2443c1b030d8716ff803330e8eead20135edb779f76d874b3bfa9"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/SinaWeiboConnector.xcframework.zip",
            checksum: "c79646e28fa7b6bab805e9a5a111624c63a791fe05f571400ed7afd2ae00dd64"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/tapsdkcorecpp.xcframework.zip",
            checksum: "141bf9b60631db623ac7289f87415536b54bc2729fe3f3b0e38947db6ef0a8a9"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "6c898b46f54e81d39ebde5e2322ce0962d1c214c37cd3c67df19145922df78f5"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/TapTapCoreSDK.xcframework.zip",
            checksum: "2aaa70f90f5a85f211f8d25612e0c2a4b3122576948704b7ce75452381389220"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/TapTapGidSDK.xcframework.zip",
            checksum: "bd1b7fac9ba35fdddf17bb6e3b782ff30ba4f62a7576436bb35ef16d6bce766f"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/TapTapLoginSDK.xcframework.zip",
            checksum: "388daeb9fb3820f18a504adc76016005e52a1f4dad1379ca0a9dfee479ffc887"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/TapTapNetworkSDK.xcframework.zip",
            checksum: "4c81c1f3f0ba3172a9aca43e3768e3d7414163676ff445441bb7b6e99dcfddf8"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "dc521ae3bdbb0a99ebd2b8f81b45ea5b8124ef548e7dd841d33283c54fdaa3ef"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/TapTapShareSDK.xcframework.zip",
            checksum: "e134e858b2aaddbb0a2525b9c6fdedb1f64fa5ef4e45c2c222331d8c3a6b6916"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/TencentOpenAPI.xcframework.zip",
            checksum: "7d667f0a2656e0e98623b92d66b0bd0d2835c2736a631efa0a2e0104f6856c8d"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/THEMISLite.xcframework.zip",
            checksum: "3edab187d09ab33feb1c48a27bf1ecfe3788e53a4ccbd58ea8eb6b1b768bf785"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/UnitySDKManager.xcframework.zip",
            checksum: "83e58d46faf631a1ae1b58cbecba151669ee0864e88834c27b4b380ce8fe3456"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/WechatConnector.xcframework.zip",
            checksum: "794e2618ecdc9ff23aa0d8603ab72b2ff6b8ae69d9a3ace0033fa3913d1320bc"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/XHSConnector.xcframework.zip",
            checksum: "90f2ed5442c62532a7e92cd7fcc746407c5c00ef46022c133abb01e84aedf8ee"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "3047b9af664a756f3bbc945258a71f1467c00e3bdc444d41aa3ff7b8586dd745"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/YTXMonitor.xcframework.zip",
            checksum: "577508bf021b723473781362f9e860b3b183942d505e0f199f85f5d8943eddd7"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1478325/YTXOperators.xcframework.zip",
            checksum: "33c8b885f3c60df8022974977def67a52a0060970c2de286e0dbb89268dc2153"
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
