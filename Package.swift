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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/ATAuthSDK.xcframework.zip",
            checksum: "4443866e31ddef080b20de15933544f2e5183e92b614e63da724a43446f81c84"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/Bugly.xcframework.zip",
            checksum: "00c5a7a52553352e7a0e18a90eaf4ca90d3aeef7e93ec3e7ae572ca34fc6b0bc"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/DouyinConnector.xcframework.zip",
            checksum: "f7e9c18e77bd1ac7eac4f570c7267e299ce66970c8fb8930e80c350a152c3f04"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/DouyinOpenSDK.xcframework.zip",
            checksum: "2750b4f8f80fb689f30299191b21dcbd4286e1a990aec8690c579bf231093198"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/FlyVerifyCSDK.xcframework.zip",
            checksum: "5d172394938ace95ef24ce6270f2085c19bb7cb7530cdc9eba44597518c4929e"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/FMDB.xcframework.zip",
            checksum: "9cb53021fb11f5a2c58063b42b9fa7833175df36376c5efb7ad6fc063b5e4043"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/GravityEngineSDK.xcframework.zip",
            checksum: "3869fba8447682be5aa8e2ae99a3efc7976618a87bd8446ab1832940b63251d0"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/KuaiShouConnector.xcframework.zip",
            checksum: "2755bc101f2bc4bc7c15dbb94624608bfe47b9e3b7c03f2319eb1eacbb6da8f4"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/MOBFoundation.xcframework.zip",
            checksum: "26e38d98e33f816006c031288e0d1611321908bc81983411ddab5bd835db6b5d"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/OneSDKAccount.xcframework.zip",
            checksum: "ec76eb9122c07a8f91959bbab9975debe6e00ea476b5438daf600466519021c8"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/OnesdkBaitianFramework.xcframework.zip",
            checksum: "6b4596bf38c985fd0b7048b233ae44b589eff2dfaedb872cabd7ccdebb121a37"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/OneSDKCommon.xcframework.zip",
            checksum: "568f5f21908bde763b76b5b5f00bf633d5c972dbd9818564128ffa3291acb812"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/OneSDKGravityEngine.xcframework.zip",
            checksum: "9495dbfc3187dc5e1f0e6d4d8fc053ecf545809df7b3aeadc4a49cdc9cb66e0e"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "34937a56960d09128aead78f3b21104b1c03e6141c8883548f7d125831c9e81f"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/OtherPartySDKFramework.xcframework.zip",
            checksum: "e1421ebdfe8ca39e3e1506c3fb896cb4a4adf740744d4b24beaf66dd383251ad"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/QQConnector.xcframework.zip",
            checksum: "8e12c0536f1a9bbf4afcac0306c35346f25fc9046f91f11c1b091c465f180f12"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/ShareSDK.xcframework.zip",
            checksum: "1609bbc4d3a22f1330c71e05f4e9b8803e4c3f86e5a86cd29d8e227ec483a53e"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/ShareSDKConfigFile.xcframework.zip",
            checksum: "5ae68b831c327f793bdac241caa0cdc0ddfc0d9f8de57cb11b563fabadf2c2bf"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/ShareSDKConnector.xcframework.zip",
            checksum: "cd4ae4c5aa11cd2878d7d51cddb6bda2ea12ef0db46c756c1755cb85fd312112"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/ShareSDKExtension.xcframework.zip",
            checksum: "663dc6d9179af13f345d41a9f954c12750fdbb901b6aad2f84ccecd2ad889790"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/ShareSDKUI.xcframework.zip",
            checksum: "98cafa70a75ee03f257e4092684ca3fcf23ce3fb6817bf13369c93bed00293ee"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/SinaWeiboConnector.xcframework.zip",
            checksum: "d64e14f08f44e6bf8b9cc78334e0c3c22dc8543985760ff629084b498b8c8f29"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/tapsdkcorecpp.xcframework.zip",
            checksum: "1995f0512c4577a863d6b2b625075c1d5f07087444b697186750dfaaaa1dd7da"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "de3f1532510d61d005681caab72f97486557bc307421e3a426bda6d8a129e353"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/TapTapCoreSDK.xcframework.zip",
            checksum: "156f49da1991389d71ba0c80a176bcd0ac793394bd60a26d0253f72e3bccd16f"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/TapTapGidSDK.xcframework.zip",
            checksum: "9646a0173999a49f466a08b22703e7f445cfa62e226b407836b5fe6e51823bbf"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/TapTapLoginSDK.xcframework.zip",
            checksum: "5c4c32ece08724bd1b6f42582b48da6921ebe54103a33d0f4932c9c3071aea9a"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/TapTapNetworkSDK.xcframework.zip",
            checksum: "a11addbfaad105f59d16a54790cd9c3b722965a0eef1ec031f275902853e808f"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "a3e7756bc23ce3c6ee15deaf636743f08b97f2b5c0c1fd2ae3d1b52521ae4715"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/TapTapShareSDK.xcframework.zip",
            checksum: "dff0ecbc67cf3d82c50af4efbe4d2f82415af5d4f63455b3dd29f584c7e216b8"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/TencentOpenAPI.xcframework.zip",
            checksum: "56a4704a91e281a3602dd172e0257fb448a7589414877e427d4de2606019f38b"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/THEMISLite.xcframework.zip",
            checksum: "930b78a4ecc9cbb18ab63014fcb6b8af0e932d78566768c85626620a56a53e56"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/UnitySDKManager.xcframework.zip",
            checksum: "8c0873dfd96991de60a3c896b9d035eb81cf2d153a3ae0e7e89af3945cd77038"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/WechatConnector.xcframework.zip",
            checksum: "7113f8180d16363be95027f6918de270c65688bec4ebf48f2b6552cd400fa2df"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/XHSConnector.xcframework.zip",
            checksum: "72ac8f380cfc9bc63382cc54fedcf8494cb6933a6a07a7779642b241a5893a2b"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "b223ee5fd079ea7f3f910cf9d97fd05940d2c9ba45b7ff19b9b9de612625da8f"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/YTXMonitor.xcframework.zip",
            checksum: "d1d300d87a926932b0087442470966f01992ebb4e019887b3e7c8ac9d8f43c14"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1/YTXOperators.xcframework.zip",
            checksum: "a98b292f1030f92b9bbf8b1e949af4334e5c61c9332f34fded0813c04b8e3cf4"
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
