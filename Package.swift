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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/ATAuthSDK.xcframework.zip",
            checksum: "f0147391e755b40d9ba0580c069e1007f268e59a24a6a7ed7efc4476eeca14aa"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/Bugly.xcframework.zip",
            checksum: "d2f90541d82bd44475327f38e09e303a46bcb7771aaa438353f82cf4ead7da30"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/DouyinConnector.xcframework.zip",
            checksum: "6891ec4bbb94cf6509e9705cffd420e6cb750d1536e4821d83d3dfdce561e051"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/DouyinOpenSDK.xcframework.zip",
            checksum: "8c0acb2555b890b8e6b2c2156a8e2327cea2f828213db32cf80fb3bde4696e7e"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/FlyVerifyCSDK.xcframework.zip",
            checksum: "0ea3f741269a36fd94f6621e5f428f032b2d5fc54df5599915c84995f4db815a"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/FMDB.xcframework.zip",
            checksum: "a03bb103ad3c0f12497256811fe12eb5b417f75024250e7efe1bbedbc77f0c4b"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/GravityEngineSDK.xcframework.zip",
            checksum: "d4a3cf11e9591457a442c26debacd2d599f136afa848821832dd8cd28745d68c"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/KuaiShouConnector.xcframework.zip",
            checksum: "6f15ff60760421c2de00c8b32e901dae8dca4c0f69740ac6f2dc716a997521e7"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/MOBFoundation.xcframework.zip",
            checksum: "dbd4ee9a31230851a1058708563868aef0269ab9ae777e3579226d5947c440ca"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/OneSDKAccount.xcframework.zip",
            checksum: "53c430ca05ef43273207bf084c76e2d9e7c9b0a2f49caf11faca6b43b36f673d"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/OnesdkBaitianFramework.xcframework.zip",
            checksum: "5ac13a546ad519ac02beff626c8449686412594bd98035ddf18374a720a4d15c"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/OneSDKCommon.xcframework.zip",
            checksum: "676350a37537b036703f7ebbac8fe1e52130fb9bdbaaf054601781a5af158084"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/OneSDKGravityEngine.xcframework.zip",
            checksum: "9d35877f16cfa46c920114664f234b4cc8b3bb3da75046ac669ca77334c778b5"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "862d4260ca24fe33adb981e1e0777e058c030dcba67c7f6cf711ea58029ea9a2"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/OtherPartySDKFramework.xcframework.zip",
            checksum: "a80fe930309732fa0790391e49492b026a8f4dcc7e685617beaa6afe17d370b3"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/QQConnector.xcframework.zip",
            checksum: "1c5d53566b2032225684e43a3742ecd0df9f58944ca34b465c52dd8f86ad9217"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/ShareSDK.xcframework.zip",
            checksum: "a16754a61cc2f5dd0523b5b3007c7c03c533587b68845c224d0081e5ea035eb2"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/ShareSDKConfigFile.xcframework.zip",
            checksum: "b703f3b7237cf09fae639a65c0242283f9da7b1b99621956f2c503c2b8f64a8b"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/ShareSDKConnector.xcframework.zip",
            checksum: "8e34effe5734831d5bae0f70b10255e4df057711f365fd87cd80df2e17c691e7"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/ShareSDKExtension.xcframework.zip",
            checksum: "c68abdce33a5f33963108fd93ef03ff657a9c787dbb8e0723043d0bd972f13c8"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/ShareSDKUI.xcframework.zip",
            checksum: "871fe677676156840923640badbeb1c41189dfb895fbe6461b22bc6f33385d01"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/SinaWeiboConnector.xcframework.zip",
            checksum: "90317b7f04a2ae63832d7e859db1313b54b749ebdf6270f1cd5dd1a3faad294b"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/tapsdkcorecpp.xcframework.zip",
            checksum: "b00cb633ee6e8170201160994f20444fe286a309b63292fae19097fd48662c6d"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "d25ceb311ddb75dd7452ac0676728873e3c9372ca4fb4f86478d521c908aeb53"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/TapTapCoreSDK.xcframework.zip",
            checksum: "e5dadfada4433b8c35a5f4327b3b85707fd5b7c14f6dcc85d179b072162fea61"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/TapTapGidSDK.xcframework.zip",
            checksum: "b7e6f4920370d5390d34f2aaf72d811e55b2933dc06711654be0d338bc10fca6"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/TapTapLoginSDK.xcframework.zip",
            checksum: "1bb2c2cb1b41e10eeabcca9e2f00a57bfc0bc53f91bd2ad85e86848e8591e661"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/TapTapNetworkSDK.xcframework.zip",
            checksum: "a801f67ca46be0b4f0e9a95ab31217680ab5ee6914511588ae06b6e5828683e9"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "f9a375e1be34174865d99105936c6c6819e28d88bec47692c5df383bffaea58f"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/TapTapShareSDK.xcframework.zip",
            checksum: "2fc9a2e77cb362880b6df1a161e3d990f9ba0a822eedc215a3204d9d50170f91"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/TencentOpenAPI.xcframework.zip",
            checksum: "114bca29a97b9d9647c9cf57ec99937fbae74e1ccde3af0386139b267a68a686"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/THEMISLite.xcframework.zip",
            checksum: "16ad3d25c4bc1156dc0b3121febfd8ae78558397de63d727674908793d26a1ff"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/UnitySDKManager.xcframework.zip",
            checksum: "45a885b7af9d89218ca403268417a9817b545b2ddfd9073fade39d7ad550f466"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/WechatConnector.xcframework.zip",
            checksum: "5d99823e986fcbee603dc467120d6b8a9e26dd7692b27e5105c21de220684301"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/XHSConnector.xcframework.zip",
            checksum: "a310b1f7cff182a3c0569aa4ed9840b43db802be3a4ea0321625b28b2acb27d4"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "5d019d8834563d07bae65ca4957ec574f1a628c12b7a2259d397cfe27b354b36"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/YTXMonitor.xcframework.zip",
            checksum: "e12773d87b5ba5933f5dc24266c17582e04a7d209c496e5215e2c2cd23924395"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1410865/YTXOperators.xcframework.zip",
            checksum: "28a07363af86bba84ae16718d1b5df31cd38819b6306fcfe701c9cd33f7735ee"
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
