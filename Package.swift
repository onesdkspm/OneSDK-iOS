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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/ATAuthSDK.xcframework.zip",
            checksum: "b9a303b6c8277a83f449a23a1037739428cae44253c4c899d7346da8f86ccc21"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/DouyinConnector.xcframework.zip",
            checksum: "fa771d99490dc8e91c2a1025b14b7df47e420a0c6b909e7081517b2029ed2d1c"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/DouyinOpenSDK.xcframework.zip",
            checksum: "7c30420d4d682508de9df049bc73ca93d0128217afc257902d90e84edfb171d7"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/FlyVerifyCSDK.xcframework.zip",
            checksum: "2f92283cbcfdf4dd1d40d673a342c7d659d240e4e6db3d9c4e3ba18218edbd86"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/FMDB.xcframework.zip",
            checksum: "d3fb1b71cdf8252a7fb332e2e26effb9c309aa4ea62fc4dae32549c3d7991262"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/GravityEngineSDK.xcframework.zip",
            checksum: "fe77605f6605a76c02b85df8ee690dd5b4dd7a0d22c6c6e70df93cb1287454f7"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/KuaiShouConnector.xcframework.zip",
            checksum: "0a232e851d66c7a48a5eb1f0f64aa6c8c5f757e6cec4c91613c28d171d735606"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/MOBFoundation.xcframework.zip",
            checksum: "d87ae0730f433fa979b2a5fa272fdc15b75b304e92396190ed9a020f6581525e"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/OneSDKAccount.xcframework.zip",
            checksum: "6fdf6b75824c299f7cd3e3b85ea7a18d744677c89c318b1c15edb2206e70c17e"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/OnesdkBaitianFramework.xcframework.zip",
            checksum: "42aff072d3e8800a3e7a213a35564e432cc6fa171583306425fa4f862a049225"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/OneSDKCommon.xcframework.zip",
            checksum: "918dfed4a75f030d8223775d5b972007640dccd26034049276d689307c63ad81"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/OneSDKGravityEngine.xcframework.zip",
            checksum: "e289d154ba0443570b68b53c34478d190322018b6d7c4d04ebb57013e3a5d3d2"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b68827247ccf14695d2c37316cbccb460c2713e27e3ce0a2e26a522d7cdf759f"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/OtherPartySDKFramework.xcframework.zip",
            checksum: "f98b73d99a285292895da2b6fa7933b74cd7897c7efc54408df0f25acafa7219"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/QQConnector.xcframework.zip",
            checksum: "11258e3d470da68db05eeee39b9ce39e1213ab7af9e37574919f9459b9719052"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/ShareSDK.xcframework.zip",
            checksum: "8dcf097c5715157c2b1e5c94791b10306cdc8e074f904d4bda628a6e118377f1"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/ShareSDKConfigFile.xcframework.zip",
            checksum: "ef12da23c571727b2a93e75a440963bf85d63e5366bd12bb4b5a2e114a811223"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/ShareSDKConnector.xcframework.zip",
            checksum: "7f38b03a307876cc810d8efc79ce97454f9ffba8d04cb76eed6c28207cbcad5a"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/ShareSDKExtension.xcframework.zip",
            checksum: "a739b17aab9d5d7e7f1961c27eabbf5fb9c4d14cd72e2456a2775623b5d4bccf"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/ShareSDKUI.xcframework.zip",
            checksum: "40f390dead8edce795a739d6d1978c076fb642a052221b9e474db0abee4057be"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/SinaWeiboConnector.xcframework.zip",
            checksum: "d9c5ac325def3dd810a68df5ccba53e2d3953c671434db6f3b616e3472a7321c"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/tapsdkcorecpp.xcframework.zip",
            checksum: "bcb994c15bcd1441d032fcb7c79c5003ff2fdb0157f3f5263f60b0c6e4fc1047"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "c2f9e9e827f0d59d72eb72535787e1705e15ba439a6e869fed0f035668b237e7"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/TapTapCoreSDK.xcframework.zip",
            checksum: "77cacf58c115ef9b84cc135712cd34ea6e90032f3c79cfc69f459848fe658a99"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/TapTapGidSDK.xcframework.zip",
            checksum: "43a6f228875d94971820b4ed0d0cee6272550a0c3be639d9bf73394d1b27c690"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/TapTapLoginSDK.xcframework.zip",
            checksum: "1a69e738daac227c7b114666d9ed1bf25931b8e0e1a624c3be4396b9b2aa6b11"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/TapTapNetworkSDK.xcframework.zip",
            checksum: "180d75a53520159f5f797d29210f2d6b4e1ac1be2600e488f35a337fe41d38f4"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "746b78a3dd8bff4b8426b187e9d89da597603e12e9a19374f5a501a607b399fc"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/TapTapShareSDK.xcframework.zip",
            checksum: "8736d3b9863abfed18b5f8d33000486cf9f9f3925d6c2b45247754acc277cb1c"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/TencentOpenAPI.xcframework.zip",
            checksum: "7ebb6796816e438d270eb23c28c07bcb9a2c13d600799160a08580b6d5c93cac"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/THEMISLite.xcframework.zip",
            checksum: "9b316e10ebdd877b741b678d43ce3114372da8adb48b5097d46f59b55460f710"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/UnitySDKManager.xcframework.zip",
            checksum: "1f344a9e6f899f123cea77352bddf547292097f804bf03d45fbe056196ce5978"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/WechatConnector.xcframework.zip",
            checksum: "d1d4f8bae0abd61f2ffe68f9b1e205cffeff2932d37977b9598705cf473bc4a7"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/XHSConnector.xcframework.zip",
            checksum: "c20c5b0d505147e018f5ae7af6e1a2d3d40fb381670073d7b23bae61620dcfb7"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "f3fd084efa6a98fa7a503f361f9ff115c32d2dc3a5492c34793b2728fe69074f"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/YTXMonitor.xcframework.zip",
            checksum: "d6b42a33b5906dedd8a0ad565ef7553bece8f5e7c98d8076acd6f7cbf3de5cfa"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1479554/YTXOperators.xcframework.zip",
            checksum: "98debdd385e3e4e03fe05b775e1758d9bc4e41ba659113140ffaff223a9f0c9a"
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
