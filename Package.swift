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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/ATAuthSDK.xcframework.zip",
            checksum: "afcbf72524240fcdeb89842a81bc72b06b0b558e5a40ae6d95ab01ec1b565bd1"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/DouyinConnector.xcframework.zip",
            checksum: "9aabc1b12392bb85832e30209da9937a03f6eb6af7809a70d5645fb1c6095e57"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/DouyinOpenSDK.xcframework.zip",
            checksum: "0f96eedcb72249987166bd829122cdc6e1e4c376b395cee9f0809627a23f7774"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/FlyVerifyCSDK.xcframework.zip",
            checksum: "79ff5956eb30074f561fc50988aedba7284b0e1da660bff4f4f2736fb42b99e4"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/FMDB.xcframework.zip",
            checksum: "93cd6a9069e9c64b03121d81a63ffe5625b53e38725ee8c34ef2ceef933eb8f8"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/GravityEngineSDK.xcframework.zip",
            checksum: "95c00ead4cbdeea45b9434713d84b2798b11b36db46146fc46dde096194f0302"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/KuaiShouConnector.xcframework.zip",
            checksum: "9136d0490609d0762b8e35a33a120656223a2224b788f33d7e2daad74604cd33"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/MOBFoundation.xcframework.zip",
            checksum: "03b449d2fbcc3815c36fe7cfe11d99a4b04ed36cb9068a6c25977b9b59e5cdf1"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/OneSDKAccount.xcframework.zip",
            checksum: "ad03130d0997a03304b1657e706dcf9f488f6cea29301f86e8e84b30d9d9686c"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/OnesdkBaitianFramework.xcframework.zip",
            checksum: "fda83a1f6eb77f5bedc9a1be1754ca44b7822ad39580ed62f0ad787327c15fa3"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/OneSDKCommon.xcframework.zip",
            checksum: "c1ae8531f6fc3a58d7400c9446cf4d404d2f58c894a59134155c10022ea41411"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/OneSDKGravityEngine.xcframework.zip",
            checksum: "12be1f3c933e248727dd55c4aef96240c64f467cedf494f8a3669037198c21ab"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "c9630639706676357878a0e904dd87285ce646b40db106d65b845fbaaa654773"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/OtherPartySDKFramework.xcframework.zip",
            checksum: "4afab9c4004ebacca3688c5ec946bc0c83d425f71d32341764b18308a9e65898"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/QQConnector.xcframework.zip",
            checksum: "d06901f97aebe5a4589c7ec5f8c447521a7291ad928844aac85665647cbe65bb"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/ShareSDK.xcframework.zip",
            checksum: "9d80fe602aa81bf1cb0fa70ff568aee37d73874367ad3893a02f63ce0af31adf"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/ShareSDKConfigFile.xcframework.zip",
            checksum: "59e0e05e5d2afe697818aa00a9a067e2e5f02d93dcfdcb066db67a7d5c7ff937"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/ShareSDKConnector.xcframework.zip",
            checksum: "14346d77035fca2368b0aa2f5f30d2413b09d8947cc0c8cc494956ba54e4ac8c"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/ShareSDKExtension.xcframework.zip",
            checksum: "5070a185c24b89157eb784ca9198491b531f68e9447338bddc87160e804fc96f"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/ShareSDKUI.xcframework.zip",
            checksum: "34e23f7cfe0b413431138ebf92e126794397db788500a6134847196519765e2a"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/SinaWeiboConnector.xcframework.zip",
            checksum: "f36edc4b0ec602246fb9369d17f96531f4ba026c0a68c202cd252a60ed62b46e"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/tapsdkcorecpp.xcframework.zip",
            checksum: "f41e35bc633c576bb26e861c1bf13de786ef34d02f0cf0b952dd43b9b494c2ca"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "1f3cbccf0a92aafaf63106cd30999d6404808702d579392fafc13aa2e051ca2c"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/TapTapCoreSDK.xcframework.zip",
            checksum: "c89b71348b54308959177d8d6957bc374b7605651e3ed4b64b09678e3eed309d"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/TapTapGidSDK.xcframework.zip",
            checksum: "b16f85bff35bd5e2dabf0e63d9809aae64d822debcd2c75c7a8436929bfdd9a6"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/TapTapLoginSDK.xcframework.zip",
            checksum: "38c912d582f7ec7b24dfd0d341000f58746c368dad50954854073a99c6a4ea73"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/TapTapNetworkSDK.xcframework.zip",
            checksum: "41e5dcd01085156a2f19bd7864850d2eaec7942a6db4b7c3c9789b6db0dc4b98"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "9b6cade5a2f25775f56fe82c77a9450ffae7f16cdd07c1d8798a74cc8fa7e439"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/TapTapShareSDK.xcframework.zip",
            checksum: "d235d0593af47c45cbff7251688eb825adf1c8df4a30836daa6358ba6f42bfc2"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/TencentOpenAPI.xcframework.zip",
            checksum: "fc93f7bd1bba0480bafa8a40e9ce6d442866c470bc6ec4e77baac74a77fc966f"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/THEMISLite.xcframework.zip",
            checksum: "d89f779f31e049f9b1b7f0ba4e8300f4f8fba8f0b48a957962477b717f6afe9e"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/UnitySDKManager.xcframework.zip",
            checksum: "b13865cd62a51009d7e370ea23bdf7e60bcf76f237af2840acf180831ff85f1f"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/WechatConnector.xcframework.zip",
            checksum: "eb9324bb402ee9d23099a2c1a0538813fcf52507855977ee6e2d84df7433b309"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/XHSConnector.xcframework.zip",
            checksum: "eae863a27cbfcfe33996cc51cc86c2dd53ba85481779db81aafe5cbc091d0343"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "8f8b50f37de570dfc06df9a8375fd19c239910d9bbf4cb22cf0c609efdf32f22"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/YTXMonitor.xcframework.zip",
            checksum: "2289ce494b56b1785a0568fc49bba4584b1f09fa0943713555f00446fad78a87"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496657/YTXOperators.xcframework.zip",
            checksum: "9433d0a8c50b250f3fcb5ac4e20bbfdd7b260988846f176cd4910ee8a778a18f"
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
