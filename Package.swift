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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/ATAuthSDK.xcframework.zip",
            checksum: "44804938de4cc7c012c322869f34f5997ab1ec483b3c6fc0b4da53efe47982c0"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/Bugly.xcframework.zip",
            checksum: "9fd99acf36a610602b4a0dc39c8038da3135d80fe0d6b96ba39e715939e881a5"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/DouyinConnector.xcframework.zip",
            checksum: "da816e2661ede7b181d56c7b284a84c900c4cc752ac14c5053f081e541b4f684"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/DouyinOpenSDK.xcframework.zip",
            checksum: "b4f00a4e8b1fb7d842ed9051f516d8914dc54da5efb380f6aef8bf23822281fb"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/FlyVerifyCSDK.xcframework.zip",
            checksum: "c4968ea79c1400fcc6d0566a827ef7818aea92481f1e7bd0f6a9c689a4d41be3"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/FMDB.xcframework.zip",
            checksum: "e581a164b24d7b8c3693113d552d5c254120b7440504c2e1fbd9a378fa7198b2"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/GravityEngineSDK.xcframework.zip",
            checksum: "e6ff4803d7cf56618032831d9a85f5ac633dd91a3d55e06aac77061e6e09f5f6"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/KuaiShouConnector.xcframework.zip",
            checksum: "349799a6cd7ca2bf361599dd30909c44df833838232025e3a3574d7f8e2dd0cd"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/MOBFoundation.xcframework.zip",
            checksum: "481c8c2753ee9015f0cb30f1d056c6a87868fcbb177f02839fa7d6e7d8341b75"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/OneSDKAccount.xcframework.zip",
            checksum: "eeedd6263910942ea54f79b3ff99c2f8556bfa8f2de96a824c0fdebf764ff250"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/OnesdkBaitianFramework.xcframework.zip",
            checksum: "0a964b26230b45b55e43c57683c309b60c38731bbf5f42b69a95063708894d1b"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/OneSDKCommon.xcframework.zip",
            checksum: "0ac61c82a98a7d48ddfb2024875300c368bd9356b2c5a1e89096c1b04e0619b6"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/OneSDKGravityEngine.xcframework.zip",
            checksum: "b0e7bd356fb734faa3646da3f602b832f921d52d8957051e94e468fa55a8804f"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "1611ca3592585256c4321adb9b56c3ae90193d89cac93f0d604638d4fdc02a1f"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/OtherPartySDKFramework.xcframework.zip",
            checksum: "8c045b1f337be2a9bed85a2b5b8127b21b30526dd2879fdca7c649f434552cf9"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/QQConnector.xcframework.zip",
            checksum: "ed26406f3ed40014067a4008eec08dea543b7a27afaff2cf035fdca8e523e546"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/ShareSDK.xcframework.zip",
            checksum: "a6952c499b8c6ea9d8b603925d5ac5ea072c3a6820624028143115e92be89192"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/ShareSDKConfigFile.xcframework.zip",
            checksum: "c5a30c6b7371c6729c28ccac7310cd117981bf68295f28ed2721ce935ae0ac90"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/ShareSDKConnector.xcframework.zip",
            checksum: "90b8ccbd9f7bf6453795e7b368b332dc45a3f77fa8b6da2409e71f8573764d30"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/ShareSDKExtension.xcframework.zip",
            checksum: "c7918a9f44cbfd1cb674d160ac8bcf84e700690009a7086a17fc886c0a07e2f5"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/ShareSDKUI.xcframework.zip",
            checksum: "56eae848e764f3bf3c222a08a028d84907710010457c37a1299dce31c39a697b"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/SinaWeiboConnector.xcframework.zip",
            checksum: "21ef2d2047aa1e9cc8d78c46b02ffe55523520844f45311b80b8ae259bfdb248"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/tapsdkcorecpp.xcframework.zip",
            checksum: "79649062117ad1605aaf9e2322c284aa03448f573616592c776ef5dac12ace48"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "e9ade866ea87ad7e18289eae48b4750d537646bad2d3408d3724da66998facd6"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/TapTapCoreSDK.xcframework.zip",
            checksum: "7344f90d3a9989c9b680837206a8cdf4df9d6df47855b34a9ca25062f2b74fd1"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/TapTapGidSDK.xcframework.zip",
            checksum: "dd4634481fc71e4b352763817b3425b783bcd640fc7da6df9984bef7557b1bdc"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/TapTapLoginSDK.xcframework.zip",
            checksum: "32ec47277df3a15b918f5fd869935974950bbf3bd6d6645ef758e5dbdc9e10bc"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/TapTapNetworkSDK.xcframework.zip",
            checksum: "4f629c151871666c5d18f349dac7eee5a43c825b55f717d2b2aa600a91cb980a"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "fb48af29fda3a2a9db7543ccadf5d0b253f8a005216164914b517897512f8ede"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/TapTapShareSDK.xcframework.zip",
            checksum: "114c00bac48dabc1cd39d5d2be05b0d88899173fe24b413180755ae522be3975"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/TencentOpenAPI.xcframework.zip",
            checksum: "8685620d4ca8613b7b2c58bad011f23879eb4094f2033584332b37ad7ab80014"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/THEMISLite.xcframework.zip",
            checksum: "5d1463143087cde50602dd5eec9bdf06630b35158f39678c0335b65239970766"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/UnitySDKManager.xcframework.zip",
            checksum: "05b1ad01c803814e6628dd3bd6cc598c40e7be5c10072bf453b17072b1c0879a"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/WechatConnector.xcframework.zip",
            checksum: "4ed636750b177e6fd09fdd2582e3b98bd4acad260c3b02264a15b425e3e88b45"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/XHSConnector.xcframework.zip",
            checksum: "d0a08de9f85f73e922614bdbea8cc5c5c228d511a410c5517a0a979f64b0a4a8"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "131aa9488d2b4979e15dca6f7e0c6d9afbbab3b65b7467d40f0b245efd044245"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/YTXMonitor.xcframework.zip",
            checksum: "ea0ed525cb35cc433e8949349afa8854a85fb24e47c6ff7aedade165f05b4808"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17.1-dev-1410728/YTXOperators.xcframework.zip",
            checksum: "e77dfb6baff3adace01692367ca9d6fed77f195692af568a58df4d9fddb67af8"
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
