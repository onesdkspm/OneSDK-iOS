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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/ATAuthSDK.xcframework.zip",
            checksum: "4ee9e74dfcbcac05fff556440c29b7ab22482cedf89f194b5fd1b24a70f62201"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/DouyinConnector.xcframework.zip",
            checksum: "9dd46fca0a48ea770b9f8b3393c02d53efb63ae11890a2e198b1d9021582f5fe"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/DouyinOpenSDK.xcframework.zip",
            checksum: "d300d1a6660d0a33fb86a50cb39769593b56d11fa3811cdb43ce4881e0956ceb"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/FlyVerifyCSDK.xcframework.zip",
            checksum: "525e0fd2ee24b93f75f1069f8177c4083973086b24ac7273355825d68e6a6248"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/FMDB.xcframework.zip",
            checksum: "a7fa68499ed623da1bfb61366df53364bd2333f9a79e5baa1d381801dd018dca"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/GravityEngineSDK.xcframework.zip",
            checksum: "2b2297a76ac7d700f8fe1bf3beafac2e4e3d1a25aaf979dbd79489f0a5268ada"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/KuaiShouConnector.xcframework.zip",
            checksum: "45393a7d445bbc7608e768fe9c480aa1d3766ddf811c58baeea4f2d57d40d1a5"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/MOBFoundation.xcframework.zip",
            checksum: "d80da097663314921ce8369b448f6c5c1e76d8f03f47c967266de94dc4dfd7eb"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/OneSDKAccount.xcframework.zip",
            checksum: "b86ed8f2124104e8844449f5be05b2aaf3146a5b0627987e2185fce0d9aa1d70"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/OnesdkBaitianFramework.xcframework.zip",
            checksum: "d977c919361159b3a9c79b1ba4e0eec5b509089f28b86a529464fff4170a7e48"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/OneSDKCommon.xcframework.zip",
            checksum: "337958ea49a87b181485ae17fe18ece72977162730f11b8643f3dd3810e3ec4c"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/OneSDKGravityEngine.xcframework.zip",
            checksum: "0826647cce2ecefed0e31900f9e859faf03537a58a1f0428ba1298ce8450b434"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "ac40f825181290651ae639e1524db26940684d8c7ae982ffc3ff4553e3df618a"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/OtherPartySDKFramework.xcframework.zip",
            checksum: "9d0946da2f071e1adad144c3a09b09203277737b6df64a2d971fbe040b701215"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/QQConnector.xcframework.zip",
            checksum: "21f067ca7ed2af79d6a61709ae614085a4a9ebdf5432fbdf613048ec88ea014d"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/ShareSDK.xcframework.zip",
            checksum: "b85897a4958f111d37de829a7c0851764c11612f7c0d34b36437b152fd6b7b8e"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/ShareSDKConfigFile.xcframework.zip",
            checksum: "beeb5abfed33e60bed4a1734e716b286ed075f5cadabb53957d875c874b7d8ee"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/ShareSDKConnector.xcframework.zip",
            checksum: "b6fdddabad5eff78586471edc253a0115dc91401ff5ed29c73b85db7a2a48526"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/ShareSDKExtension.xcframework.zip",
            checksum: "34f3b8eaed3e8684a801893b1c3ecf841865303b95af4d7a9fcc8695c20cac25"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/ShareSDKUI.xcframework.zip",
            checksum: "265f61e13d19d54a30b64813de2078fb2add0342f78a146d402284692d0af827"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/SinaWeiboConnector.xcframework.zip",
            checksum: "b7d980d8284ace036f235653a349e601da126a7d51fc668245986cb24d7dfcda"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/tapsdkcorecpp.xcframework.zip",
            checksum: "6b8c9f0e84dc69d8f968ed972cd8fc21a268a669ccbf263af62a62a341073b03"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "6ebf7278e1dfae5a4612c4504a0645ea82da7661a7db385f8c5c686df89b9404"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/TapTapCoreSDK.xcframework.zip",
            checksum: "37bc12ab61e989060a8cdddb3bcb4134037902053978234f93a2b3d813da7da1"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/TapTapGidSDK.xcframework.zip",
            checksum: "90a5b9242210278ce2edd83cd4a6e02350ca789628280cd59d131905ce72a29d"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/TapTapLoginSDK.xcframework.zip",
            checksum: "f245ca19019598532fcef5f2801a18bf1c4f56ab90916e0420f4ad8b885df497"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/TapTapNetworkSDK.xcframework.zip",
            checksum: "b8668064eb37ac32442156617254d01dcc84a072870bffe640130bd8a8f1fcf4"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "9fc59ba0e86294fce59c1c8678971fc8188c27aaa065af9beed8c7a4089da98c"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/TapTapShareSDK.xcframework.zip",
            checksum: "ebc43c9b4d1dc348b336426b05275ef959b4155a32344a4e830284f96c6d886d"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/TencentOpenAPI.xcframework.zip",
            checksum: "67f955aec6f1c56c6241cb7a8715bc89d22a7d743ee99be50092225ec70040dc"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/THEMISLite.xcframework.zip",
            checksum: "6198761ce6cb66fe98a90c63b4be45a79b7844b043cd273f192460d9852d7c4c"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/UnitySDKManager.xcframework.zip",
            checksum: "f52483f25c190ed6f04fc39caf9cd84f4a8326c7994c3cb1313b37777d6d3dee"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/WechatConnector.xcframework.zip",
            checksum: "6da3bae72c60a03f8fb9b6756e631cda4b3e951da2b18a0a3d1de78e38b2234d"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/XHSConnector.xcframework.zip",
            checksum: "8c92a6a57853e118d9763bfba2ca70768034cdd830582a30e49cb8f26be9238f"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "525569a573d08dd1e9fc5c43aafecfc3c9bc931bcb9e03a0378c4cf3a6f4b064"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/YTXMonitor.xcframework.zip",
            checksum: "4daed7eefbdd4f3398f7c7ab443e378a6756aa032cf63fe4f3c868e9ccfe3163"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1477126/YTXOperators.xcframework.zip",
            checksum: "12d0b673b172b4915da88b1e8abfc5126e42cf70f76aeac551ceb14c1e2ac557"
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
