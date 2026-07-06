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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/ATAuthSDK.xcframework.zip",
            checksum: "534b33415d8ba4591015bc7f76134de597e4c84808d0d85ed556f8647422afea"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/DouyinConnector.xcframework.zip",
            checksum: "916ced2140a68b9906bc8bb49094774b5a93c4b3486af2cceecf3e9a468eda19"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/DouyinOpenSDK.xcframework.zip",
            checksum: "8954ec6eb7c0ef27449435e989fbb845306d982bc0057698dda9c072726f88d3"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/FlyVerifyCSDK.xcframework.zip",
            checksum: "ceb1e604cf8164205febcfa64c31b5a4dac6c69be3600cb0d2dc7427115a58f1"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/FMDB.xcframework.zip",
            checksum: "9d368030e27f1be66cf24c1a3506b76c1a99f1968cec63f78182ca29f73edb27"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/GravityEngineSDK.xcframework.zip",
            checksum: "e6f4e4cde876667d8ef1ce90e5e5e49ca4a83e272aae5a7d690d15991b6b7c9a"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/KuaiShouConnector.xcframework.zip",
            checksum: "df429fa384ceb5ecdd72ebd2fca439c52d12ba91e68ea4a4c398e62e97d46a3e"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/MOBFoundation.xcframework.zip",
            checksum: "bc1275d7f2040af77d1cd4108dfd7b91f3ca2dcb257829e8df7a4cb031932952"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/OneSDKAccount.xcframework.zip",
            checksum: "3eb7866b67507a37ea34ea8c9b4c2dfbde941c86432a11182305a74363b4a0ee"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/OnesdkBaitianFramework.xcframework.zip",
            checksum: "bd4a385cf27d458e4ddee0b44bd4f03acc3e52e02d7c1a60f6a23aff60dad084"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/OneSDKCommon.xcframework.zip",
            checksum: "353b300b82a41473ca66a12c0e42a9bde0830977f3954884920a2436f22c298e"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/OneSDKGravityEngine.xcframework.zip",
            checksum: "af62909504ceab3a2d042d6cbe6db741d24338a2d11b779309e35fb1b4f83562"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "6bdeb55e0975a7ec4e2bbaaafa24b8efeff822c243023eeee726ff09cdbf42a9"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/OtherPartySDKFramework.xcframework.zip",
            checksum: "d379e6daa4d2ff677c57e7551c961726627383c005f405f0b3f2e9cbdc95372e"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/QQConnector.xcframework.zip",
            checksum: "289039102148c4f50bf2e2dc68a6c0fb63c3f1bce791771e2f1b8959af8f37b3"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/ShareSDK.xcframework.zip",
            checksum: "de6ccf9778d2d0d399a43dc9f5e9b5991831fc8e41a97ab23668412584af0dd0"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/ShareSDKConfigFile.xcframework.zip",
            checksum: "85ac430f58b79f0c8fb04986d2aaa7e0d3818a8415353b7d4338c18952a847bd"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/ShareSDKConnector.xcframework.zip",
            checksum: "c8db5d10a85db18640fe452f5380c135e6ec8c3dc89364138fe6f34e603d8215"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/ShareSDKExtension.xcframework.zip",
            checksum: "55f646f34b0d8766103112c9c154a46bd1c7aee4dfbc1a01f9dd73897a1cbdc7"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/ShareSDKUI.xcframework.zip",
            checksum: "112eaa0981dc85f4fcbe4f369889109016986cf9ecc67e0f37b96d05a35f5cf2"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/SinaWeiboConnector.xcframework.zip",
            checksum: "301b454cc16895d20d6c3ef7f7acbd4ededd71a7057d3b335c2301bd915fa23e"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/tapsdkcorecpp.xcframework.zip",
            checksum: "a9a32e5813a381752ff866702d1419648a26c2464786a3771edc2ec509437d97"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "804700eb4cd2a4468c867a000af9631543664d9adf464119b7e566a642fbfc45"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/TapTapCoreSDK.xcframework.zip",
            checksum: "28d458c00914cb374413aa86cb06213f27e5da3dd765e43b4776a2d0d00575a0"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/TapTapGidSDK.xcframework.zip",
            checksum: "a00f4f9143f62ae0a7707a2bc16cf0c032c90781353ca5d0b2d7343794f2149f"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/TapTapLoginSDK.xcframework.zip",
            checksum: "dcb5a6775766fc8693777587a9af151293307352a6b7fa92a20b89b59c41a7f4"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/TapTapNetworkSDK.xcframework.zip",
            checksum: "9191d162e252564731ec0193052d63b6b7db5d9e38baad6b273489128a1cdb61"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "0da67e1e9d0f8f611b78f874080728041abb2846c39b35d1940746da4f7f230d"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/TapTapShareSDK.xcframework.zip",
            checksum: "639dccb0a3f1a8a2a82779ba1635a631d50078313b60e7a9d60d036e67f81be3"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/TencentOpenAPI.xcframework.zip",
            checksum: "8439ce5eb0fff447293459b3e483dea8649b5e51de1783f6f730ef384739e1de"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/THEMISLite.xcframework.zip",
            checksum: "03d0f1ff374a1f60f1db82a8cf25603bc6f0f7ff48ab23ebec5e87d9e6cad6dc"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/UnitySDKManager.xcframework.zip",
            checksum: "8a52e91a24b6b776b3d8ccf5d986fc480a9e8803cf439dd36f792ad0c7c33c15"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/WechatConnector.xcframework.zip",
            checksum: "157c17468652a972c894b865b9952221b422131cc47533d6d7ff590f5413b535"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/XHSConnector.xcframework.zip",
            checksum: "4754b6bd184366cfe36a9c62267638cb2b28e2f0e78aa34fb2a76ce7abbcbeff"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "35a7366f4cfcc5024ae87ff66c0b43aecd1b364251e5e2a2ca687ae852cf0e1f"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/YTXMonitor.xcframework.zip",
            checksum: "50f602fb95117ad2eb7a669565c08732edd203febb08b3a5fdb640e3bc8fbbe0"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479184/YTXOperators.xcframework.zip",
            checksum: "70990b10be6c087261cb452e743711e39a68040bbd1fd6ad1acadedd2978b834"
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
