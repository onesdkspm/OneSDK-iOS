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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/ATAuthSDK.xcframework.zip",
            checksum: "d37609ced81c0b808c06835f425be7cbff17035ec7430e04442bc996250b96d6"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/DouyinConnector.xcframework.zip",
            checksum: "58b8d0d76c47b70388d6002af9799ddc3e46f2c6b78766186493e92a661fc67b"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/DouyinOpenSDK.xcframework.zip",
            checksum: "4127d3c87665608d11b21d17db88e7e05336b1ff4202777c64be283a1c947bc0"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/FlyVerifyCSDK.xcframework.zip",
            checksum: "b7820a9fc8ad72f09065f83f1bc46f54f20f3e4a7fbfaf1f120879bbbff4572e"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/FMDB.xcframework.zip",
            checksum: "ac619535a80922c16c1580c9c365d49c46e702890e136290868c7c89053cd403"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/GravityEngineSDK.xcframework.zip",
            checksum: "3407c9565ef22b33bda9447121a45f25aac253c5175148e235e14896fcaff083"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/KuaiShouConnector.xcframework.zip",
            checksum: "00b7d41dff580bc2e7207adf2cafb223dfc76a55bcfed3c8c3b35353dcb7e428"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/MOBFoundation.xcframework.zip",
            checksum: "f560f4635ed42d02b9e4ee0c4ce9078b53f76917d08c68411da34f9050cc6358"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/OneSDKAccount.xcframework.zip",
            checksum: "c1054af3fd55712b25551e7443402665caffbb2a27b8cfb6cdec7a0317785e8a"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/OnesdkBaitianFramework.xcframework.zip",
            checksum: "1f401c94e4a19cf69270d312122d04e0d7467706c920f649ffa725715f1ca098"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/OneSDKCommon.xcframework.zip",
            checksum: "5956029385dd91d7e30aac7dac6f72fdb5ec5b45dca578090acc8ec497d672db"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/OneSDKGravityEngine.xcframework.zip",
            checksum: "59f858c1ffdd69a4f36828001d0c278b6fb914ade5e212efda0f1b61b8cdef75"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "9365ba0c9aa442455854197edeaf3252efa3b4cb53215e3c94f079684d0ffbc6"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/OtherPartySDKFramework.xcframework.zip",
            checksum: "5aa14fcdb5ab459403233f3c0606426d98553f18c09b0bd2907299742874af59"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/QQConnector.xcframework.zip",
            checksum: "3dffb4a187b50bec822cfac487d9c1e6405b0c6e9fc082c778db3f2e601937fe"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/ShareSDK.xcframework.zip",
            checksum: "fcf204873182e7118f4e57fdb560d919c3d62cf9e7c5f16f6e17bc81fb2c6902"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/ShareSDKConfigFile.xcframework.zip",
            checksum: "7dc54a2c2a1d2106f8403b1cd223dfe04dbd265d1181c41a4766cb2d3313210b"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/ShareSDKConnector.xcframework.zip",
            checksum: "8e861af28637e69b57588dd29987810577c217546256035d5f9a583308344fe9"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/ShareSDKExtension.xcframework.zip",
            checksum: "220d39b2b28061bb72d6cf91f5967d340e4156f613ebc0b69a1edf26d79d30d3"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/ShareSDKUI.xcframework.zip",
            checksum: "bbe76c15bf09ce24af29dc05eea2b6fc6f02069dbf6736d693e783bd2968a244"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/SinaWeiboConnector.xcframework.zip",
            checksum: "cc075efc16395beb905f37544093c079fbbd0a819d2cd3d70b144eb016c16675"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/tapsdkcorecpp.xcframework.zip",
            checksum: "9fd7970665d0cb22c1369b834cf3139b44b0f7bdf9b96f71f4eeba29b4adff5d"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "150bd592b40917e8495f87b33418edc27b3e5db05e9d702be882a2ed1dbc5a27"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/TapTapCoreSDK.xcframework.zip",
            checksum: "1923eaa02e6c108db08babe755b34a89e00c6876edf749baff7f38270ad763a4"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/TapTapGidSDK.xcframework.zip",
            checksum: "1feb317e4315353bcf455b0a1601aba385398381c186ad329b8adc249231a337"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/TapTapLoginSDK.xcframework.zip",
            checksum: "f1db05df7280e1ef4be465d745f654f144b33ffe846f571f77cd54ec8ccaa162"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/TapTapNetworkSDK.xcframework.zip",
            checksum: "d70eedd053c9e9ce4ee8f6da119a97946a3a7154e31ffb58e9e17ff751b17455"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "4c96631c30dc24ac139d82aceebfd886da77e4c1b70362f5af0ad6b512d23e6c"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/TapTapShareSDK.xcframework.zip",
            checksum: "8de42f2af1371de1a0b59d549359a8168fe1cbdf7a04782825666d09a7eb196a"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/TencentOpenAPI.xcframework.zip",
            checksum: "281604dfb74652f289cdd619b73ac05e2811e2e6af8c3a400811a04b56e9ff4d"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/THEMISLite.xcframework.zip",
            checksum: "e93b87d01e1b2c191782577b8213a6dc91ef7d9900c67322e8019d75bae87d9a"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/UnitySDKManager.xcframework.zip",
            checksum: "5ecd9353258b9b14f2c30d8bbcd2fdb4159e6ce8900a9a7cbe92fba8d4f8ee54"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/WechatConnector.xcframework.zip",
            checksum: "b91cb2c523ed4e728f570051038904c074e83a0d91084b473bb44444107d969b"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/XHSConnector.xcframework.zip",
            checksum: "d8d3314f7ed82ea4b84ea41020694136859a8cd3995291d7c5c3b2f6a9f27d75"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "b386c08c9c24291a55c1dc1d0f0dd2854e2bf0c67e19eb3fce0d1be1ac01c54e"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/YTXMonitor.xcframework.zip",
            checksum: "a1adc0d09abcf83358ed3799cb086a0c6101354b171e78f58ff2b7b787c0fa3e"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1489414/YTXOperators.xcframework.zip",
            checksum: "b709da75789948952014c44976de8b860e683559c81b97f90dc0f47a3147a9eb"
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
