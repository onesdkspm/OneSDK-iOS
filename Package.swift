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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/ATAuthSDK.xcframework.zip",
            checksum: "ef2f30606db284555675afae1f8c07dc508cfbc68314f6107ebc92a53726a1e2"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/DouyinConnector.xcframework.zip",
            checksum: "bfac75afce1d5c9100cfa75260d57937d2897008caaeec49cb6cd6ff61b465bb"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/DouyinOpenSDK.xcframework.zip",
            checksum: "7b8c6e5cf59482ef4150ec16b84122fd695d27dfd57aedfa6ad879116f90a1ea"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/FlyVerifyCSDK.xcframework.zip",
            checksum: "dc5a9972f499c576a4ac296dbbb4e8df5230a3a5e5984732228a59f436670dbe"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/FMDB.xcframework.zip",
            checksum: "6964072b29ea1b9e3354c3c363d17e5f851bf3982e5914183f12e14a5a103c29"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/GravityEngineSDK.xcframework.zip",
            checksum: "8e9aef4f56cd23e875eca642a52e1552b2b85adc7cc3d4c937a4eebdab376fc9"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/KuaiShouConnector.xcframework.zip",
            checksum: "9cabf054353eb0fc30ad8f54e4e0b53ac80122ab6fe2b74581a2e7f967303159"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/MOBFoundation.xcframework.zip",
            checksum: "6d1abbbe06744e9b46d83fea593ec173e83a79461c12b5a3767900a981d46e74"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/OneSDKAccount.xcframework.zip",
            checksum: "160422c7ec25f7f7b766568ae54ef7020a353854500184b02b78d2a53413b48c"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/OnesdkBaitianFramework.xcframework.zip",
            checksum: "06d2d7151e9a4d2186ff032e0f3e91d5656d337282c0c902c351424d6ce033fd"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/OneSDKCommon.xcframework.zip",
            checksum: "3cd873812f864b0d19f4bfb52b78ee8f5623e03ee7bae3521698f9427b15384d"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/OneSDKGravityEngine.xcframework.zip",
            checksum: "941e7a06d1b3583fc72bd4ffc4f1b3d00ff9d7379c35e2a9d76d7f03bc1ee79d"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "a3dda3ad4ebbf1c0b6e048d00fb49cad370202401d98d3a5170088b338bd21bf"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/OtherPartySDKFramework.xcframework.zip",
            checksum: "a7642c475efa56c754e6ec61a772502011d3b487af651a8ba964b0c68208abaa"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/QQConnector.xcframework.zip",
            checksum: "5f882228826d2dd7e4d81c63ccd2388a246cf9434dfd4cb3bb955b45bc89b9cc"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/ShareSDK.xcframework.zip",
            checksum: "4812b516b9cb8759ac7aab1fc27437cfd6e2c7bb178f6e6d2845c1552a9ea6e2"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/ShareSDKConfigFile.xcframework.zip",
            checksum: "fd8f16f5f63ce63a0f20b483dcc8aef7a6619d4b315d586caca8c91fe5b9beb4"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/ShareSDKConnector.xcframework.zip",
            checksum: "971429830ab913060bceb871099d1de73061e6c7817ac80c14766094d9bb1169"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/ShareSDKExtension.xcframework.zip",
            checksum: "7d064cd6802adb09e2cc342c5a9b663c81ce3379671514e950bf459457af26e2"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/ShareSDKUI.xcframework.zip",
            checksum: "497ed56a149ec5f6ba6ded8be8bb9d733a99bc786b6d45d12b6035fa6584e835"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/SinaWeiboConnector.xcframework.zip",
            checksum: "705ca0a24be3f284a0bda8d34d28ff72f8b7289ce895f5c8b6488e69c9e2c4b7"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/tapsdkcorecpp.xcframework.zip",
            checksum: "b67015ad8abb7502d6fcb17800fb0616bf3fc40a23f71c7916f649afe1fe36f6"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "aff05c6e54043df519e8989fc7f825b515cf1039884e413001dbd92fa3d52e82"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/TapTapCoreSDK.xcframework.zip",
            checksum: "24d54521e5703495484d4e642167d5a97868617f8148e16faaf4bb2aa94257e8"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/TapTapGidSDK.xcframework.zip",
            checksum: "71860a5d201b087cfa9131ab3839dc67ee0a4d1f7d3cc8da38219a45c066bf3e"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/TapTapLoginSDK.xcframework.zip",
            checksum: "981747172c20e40d3a6a5350551ff1c21b55ddfef08a22ba5c3c3a63f8e9ca3a"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/TapTapNetworkSDK.xcframework.zip",
            checksum: "9292bf7e4d4ec3b6147368b670743c4a015cb60ad1866cca7d31777fae72b0e7"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "daaefac32b0b5f5aa5aa47628588b3bc2c14888dc9c4f01fb0f00b6e62e1c6f6"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/TapTapShareSDK.xcframework.zip",
            checksum: "a839a81bfbb4349ef4acc1cd2874e798d80487920b4e306fae5c3158de000b01"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/TencentOpenAPI.xcframework.zip",
            checksum: "a9231778eda182052f7c9797daae8477ac6974113d5cd8487ddd9319948617fc"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/THEMISLite.xcframework.zip",
            checksum: "97f5516b532f06b23fe709849284f2ac9eeeeb445b3cae904af48ed1885e7488"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/UnitySDKManager.xcframework.zip",
            checksum: "cc19f4e48ac597618ce8b93f580295fc8c963cf5477c41b79a6d48a3c9fb1242"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/WechatConnector.xcframework.zip",
            checksum: "71760328b4491d6b462487cb29f56feb276560e4ad3ea6d11f22ee476de101b8"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/XHSConnector.xcframework.zip",
            checksum: "81eb74df85e01398118caf528aeadf5d6ad19050ad28a920845be1c355f6b037"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "7184292c25444f8de419deda22c6205e145c41bbfb642199841a3d70f0770713"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/YTXMonitor.xcframework.zip",
            checksum: "5254a37d3da538bdab7082e8a865263f31bcfbc3e4c2d60c8b658eaf0f957160"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1481914/YTXOperators.xcframework.zip",
            checksum: "4e80f86f4d8ca6110ac630f79e73126162011d495b7cb6ddfaefd0fe99b8b961"
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
