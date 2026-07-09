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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/ATAuthSDK.xcframework.zip",
            checksum: "330af3e120396838617ab2594c4200e2ff2607de1c7392d4f97be3df1adc75b3"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/DouyinConnector.xcframework.zip",
            checksum: "c5cc900119c3f9afa2de14b1856dccea87cb87d7d3cea5cb40dcb2994be6bbf6"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/DouyinOpenSDK.xcframework.zip",
            checksum: "b68352390e412cef8e1cd8eca5d24b78c37e1f02c5ad70b99148b7e5a01e633a"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/FlyVerifyCSDK.xcframework.zip",
            checksum: "435d1493050320764b275946d35a13a77671f08253184312cf05571e78975604"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/FMDB.xcframework.zip",
            checksum: "51112bc44a654799e6bb7a63af4e7e8a9b0b414a14c5abfed9be4d934eca80fb"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/GravityEngineSDK.xcframework.zip",
            checksum: "6181b4c46f4b233b64f8cab32ff3c315b1c90af84958aa5a82f1deccc3ef0040"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/KuaiShouConnector.xcframework.zip",
            checksum: "8c54d09728d5c15dae4f83d2d98c00e8d8b709f018f326f77b4d1412d690dfe7"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/MOBFoundation.xcframework.zip",
            checksum: "7b8acc6b8d94a62ed1dc0890a1aafc68b545f9065458da92c56ebaf080a7cc5c"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/OneSDKAccount.xcframework.zip",
            checksum: "ac56eaf2b1ef3b71452a9d50a7f09932c4c6cbf2c1ace5011b0c49e1bc4580c4"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/OnesdkBaitianFramework.xcframework.zip",
            checksum: "2c6e07df76ecaaf705530456f868ec6956034f8b95f5205245fe58b09953e38f"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/OneSDKCommon.xcframework.zip",
            checksum: "39d4e9a97eca65d3f3c872223a492615aec81a27de8e31948dcd1de0e89686d8"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/OneSDKGravityEngine.xcframework.zip",
            checksum: "d7f450a6825b330374231b047d543af588a356e92ee19726a9fde784c4857909"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "707ca2909f608627158c00e3cbc02912ea7baa4f30c7f322ab68684cfdcbef58"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/OtherPartySDKFramework.xcframework.zip",
            checksum: "98a281dfbd287a90f3a6ebef69279b349d0ee2fde8e91810e5503c966c641123"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/QQConnector.xcframework.zip",
            checksum: "ae90975f619bdea482ae2763bb25d93529fb9c020ffd08cd23a89e96710deed4"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/ShareSDK.xcframework.zip",
            checksum: "508de7756b2636220a468e9b588f604c6c079bae6f05524ce449d8f8b5b80577"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/ShareSDKConfigFile.xcframework.zip",
            checksum: "3356d109776bb8da0d845fcad8635d92e82dbb149446a68eb02d1d9230c77cb0"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/ShareSDKConnector.xcframework.zip",
            checksum: "f1ee8e6d48e8c6f342b903b91df0a6eefbfd02cad5c20638c8c2888af07eb8b5"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/ShareSDKExtension.xcframework.zip",
            checksum: "a9c26f4d7f2a5c8b4af8b6332e13a175fae7a487282d86904f64db38c08f4418"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/ShareSDKUI.xcframework.zip",
            checksum: "12557ced421e6c1f7e8c6c7e9bf90135f3db848f85a3a58e5d206408c0cd8508"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/SinaWeiboConnector.xcframework.zip",
            checksum: "05a28f13371735da84b518d2e4f7aa80f6070972906e499e47e0ff653c9f6cec"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/tapsdkcorecpp.xcframework.zip",
            checksum: "0d08bd154a40907997bccb637102bb37b7edeef0cea165582d251d9a5a8de43a"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "afa1c8be1b160b4004f0540c5b81f1e1cf91c5388b47b778303a59844df1f830"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/TapTapCoreSDK.xcframework.zip",
            checksum: "399d4140f60414b630c6049b893afbd8f3e294db56eb8074eeb95d2fa0136ed1"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/TapTapGidSDK.xcframework.zip",
            checksum: "2cc9e6d9f3754e8c9d9aa7eca9ab464b97fecb12aa15c73e77dadfd28300a85d"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/TapTapLoginSDK.xcframework.zip",
            checksum: "fe517da3684a57bb38d7e43e8582db0f47574ed193c096ba745ab2b351f4b3c3"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/TapTapNetworkSDK.xcframework.zip",
            checksum: "49a9264a643343bbb739499e30c021e2216ccb84a35c9f0f1d5f094f1a0083ca"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "af23d8f2d1b294a501dacb57607f1ee7bf2a41a446690d4711b0374d45f6ae3f"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/TapTapShareSDK.xcframework.zip",
            checksum: "1d2eff57757992583459eeb4d48637a088f9a5fa319e52689f6a996305bee6ce"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/TencentOpenAPI.xcframework.zip",
            checksum: "53bfc650e1465ba9e6263241515461002faa701e0150af67d2890fd73c5fe974"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/THEMISLite.xcframework.zip",
            checksum: "f4a11db445fa6853b3bf5739336b3f008b265e6ad3bb7e684115604c6d2c3883"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/UnitySDKManager.xcframework.zip",
            checksum: "b0d6d564304c3c0099633b6945bd3c024f4e7d91a286a25b8b2259948d654fa6"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/WechatConnector.xcframework.zip",
            checksum: "95f3268de43283886179fb85c2f45607442d97adebfee960965b7898eedeef56"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/XHSConnector.xcframework.zip",
            checksum: "89a1fc9c6c1ef7f52234bfa708890cf557f81251a8f013e226c931e464ea04d2"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "41f0e7e5623424feea2e1f855c20f1410d5c83f1532acb69bc2751e2af680dff"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/YTXMonitor.xcframework.zip",
            checksum: "cb86996a9486997eb37f2b5165b2114b5ff6b903710c82382fe8b9cbcbdf889a"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1482515/YTXOperators.xcframework.zip",
            checksum: "27ffc2338d502c9830dd07fac5f69151a862a3af928d113a9cad9a99f65a7f7a"
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
