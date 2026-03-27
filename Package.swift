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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/ATAuthSDK.xcframework.zip",
            checksum: "52425f85e0b03bdbe90aaa355d4c67e7252253d4ff83df2e812fdd76870ef4ce"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/Bugly.xcframework.zip",
            checksum: "022eac49ba281c67d37ff6bb0d8e4a1e44da1e7ec7c25f75de24c499186afb06"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/DouyinConnector.xcframework.zip",
            checksum: "3ac79ebd189e187d1a0df3bd4a094f3b8b74ebfe3e396005886131e3206219eb"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/DouyinOpenSDK.xcframework.zip",
            checksum: "3e9c1a6918eeb2b26d4ac1cc61467773d0b3b1d176f870c9d29e7686e85d1ada"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/FlyVerifyCSDK.xcframework.zip",
            checksum: "a823f78a49c10c35dc5ca85c206e0ce789f2ddd349311e44a72648922b849fbd"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/FMDB.xcframework.zip",
            checksum: "702b4ffd67774a1854cfd55f0c2cffb861e7b447eb93480ac0a09826c873ebb3"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/GravityEngineSDK.xcframework.zip",
            checksum: "f2a662388be45ed0f1d49172a6a2176407405663d79428aa61cd89d0c7f98364"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/KuaiShouConnector.xcframework.zip",
            checksum: "15db87da30499185f7c2c442c8b239d21601037648cd14780bec88acb7685679"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/MOBFoundation.xcframework.zip",
            checksum: "13bf0998c9752715a0e8929242da77ff8c8bd6f60f8a5841cda03120a8c68f86"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/OneSDKAccount.xcframework.zip",
            checksum: "a71d6b058535658428233a6e1a2dc9c3d94369188702c28cd7fcdcb26903bc08"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/OnesdkBaitianFramework.xcframework.zip",
            checksum: "fe947ed7b5c5b8127a808076699b7b333941892d1b0e4e9fca539e64df751cfa"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/OneSDKCommon.xcframework.zip",
            checksum: "c853e6757d2592950e75a9805a2ba3e605377d9ebb0e155a4632f45984f87e8b"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/OneSDKGravityEngine.xcframework.zip",
            checksum: "bea05b04966e257b45c85161c614ed85a7696eb1627af9717d91ec0d17de5883"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b0811dcf6860db7bce845ca43ec16c3fc163d38aff677ecd57ca6dbffa40db46"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/OtherPartySDKFramework.xcframework.zip",
            checksum: "d1c23de386c30d449014a52244201f886277343b7b4a79b8706b7d08738b7afa"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/QQConnector.xcframework.zip",
            checksum: "6b86a31e4222c4e7ef4569ae87bddc45883903b254a7e984dd3cb1a29e949ef0"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/ShareSDK.xcframework.zip",
            checksum: "22de20e5d453f276258cd98f779b8ffe39929a54a3b3aec95a0734d253b07730"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/ShareSDKConfigFile.xcframework.zip",
            checksum: "543bc810252a2676d6fc4ffbb87b898618b6194a809573c16d9c792c31b0a1e5"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/ShareSDKConnector.xcframework.zip",
            checksum: "93429017397954db8b058cb64c16dcd2e393762dd7b17f18a89cd06b6975adc7"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/ShareSDKExtension.xcframework.zip",
            checksum: "46219f640297ff43ea3ab292841cbf9a21ee2ccd0a838523e46f8297e8bafed8"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/ShareSDKUI.xcframework.zip",
            checksum: "cd1dbb8b8d054c2eae3b65bf3902d3af9f04ff89ed9280dcc857a77c91c7d225"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/SinaWeiboConnector.xcframework.zip",
            checksum: "e19286e01a3b492873dd33fbe1131bcd8260a43084fc27ae6c0b1a72063cbc52"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/tapsdkcorecpp.xcframework.zip",
            checksum: "2a37e3221490b639b4451e720066fa3e138f160012dba5c4e387a0f840b06df6"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "7212fa7e03d1442cb46015c3e8d79fd6f3ba94c5312634de9352109bb47b94d6"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/TapTapCoreSDK.xcframework.zip",
            checksum: "b3b8c605195cc13ec2d0362872022ad249a7835e72fb3c8c8a9e01dcb99ae665"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/TapTapGidSDK.xcframework.zip",
            checksum: "14d1458cc165e1aac36b4b2202fa25254a13fb0c9a7119c8357243b89581c90f"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/TapTapLoginSDK.xcframework.zip",
            checksum: "e77e09a4e36cd1d939d9954d7fc9fbc6b8a8f4903c5213300484d6be091e76f2"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/TapTapNetworkSDK.xcframework.zip",
            checksum: "fd207cb124c7670818397c07b59f3496c5d7edc24373e449c82f09b861afe700"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "1cea319ba9b01697e897ba7c1a42935619839678bd297d4cddcec35b017cc7c5"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/TapTapShareSDK.xcframework.zip",
            checksum: "c1e447da7e56618c362c874ce01b1fe368da5f8408ede98a254700ac239d43a4"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/TencentOpenAPI.xcframework.zip",
            checksum: "9ad2289091e73943d383c62d2e5842a8b2a34f0efd9f8449e815db008954c426"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/THEMISLite.xcframework.zip",
            checksum: "b3eebe1394aee42ef00f501fd801033cd55a72de0c3484b53f8e94bd68a74517"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/UnitySDKManager.xcframework.zip",
            checksum: "36880d1fbda3db8de84dea7d1d62956184afdf60b534ca1546cdfe126c775a13"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/WechatConnector.xcframework.zip",
            checksum: "e4bdccd86c8a0da661777710648974b60af12145163e1064ffa8c23ba164a4f5"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/XHSConnector.xcframework.zip",
            checksum: "869c0f8d96fd69016a3e54225142ae019c3542337ca5f25216cc6a9cb6ca0332"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "47edfb2e07eee689347ad20ec7a14dc44ee1391ddd6e26896074cca808e10ab3"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/YTXMonitor.xcframework.zip",
            checksum: "3d48d940c5e71c59e6ebc4306319ab228ab7b021174467435c19a3896635f8d6"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410717/YTXOperators.xcframework.zip",
            checksum: "ba0d1a162723c60e5d32dc7cf90f2a27f03c02cd17dd67afd72e01e12cda8fa3"
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
