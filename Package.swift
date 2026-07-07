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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/ATAuthSDK.xcframework.zip",
            checksum: "fc5ce5aaf63e0de86903217e19e132ee72e0533652d018fc38eaae3eefaa85b5"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/DouyinConnector.xcframework.zip",
            checksum: "100937da90f299834fab346651d3e3250e2d3fdafc9be638aec5779f95683ccc"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/DouyinOpenSDK.xcframework.zip",
            checksum: "a5acf40ac6330218e8efa819320fe4fb07f5ae5f83cddc47ab9f039a6c33e1ff"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/FlyVerifyCSDK.xcframework.zip",
            checksum: "48d1cfc212cacbc66fb700364449080ff1d97746f4fbe7e3c65c06f07c4956de"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/FMDB.xcframework.zip",
            checksum: "51dad503e0ca655b59c7d8c687b884a01794486711e17369c45de626e97aa435"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/GravityEngineSDK.xcframework.zip",
            checksum: "13e32671452c9609b24c19f418aa6e49f1c9748fab6b83a34967ab9750ca9703"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/KuaiShouConnector.xcframework.zip",
            checksum: "a3745f2a1dc3c17672f48949886211339e5e09a2784f4b503c85177b0becc10c"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/MOBFoundation.xcframework.zip",
            checksum: "ca27a20b8cc8295965fc9d2490f03291f143bfcd0fc0fa7434569c6f6976f493"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/OneSDKAccount.xcframework.zip",
            checksum: "346f56010ef9d9929d271817e88d474d8fc0b8f673e2408ffa6ba71265923939"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/OnesdkBaitianFramework.xcframework.zip",
            checksum: "77a288f6c1a8ed6bdb1150b08c131ec610eb4df0c6bf53934d7ee195f5fe80d5"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/OneSDKCommon.xcframework.zip",
            checksum: "ce00b456b36d788837d865046cc88010de1b8a03dd65e9843dee8c3d7243363e"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/OneSDKGravityEngine.xcframework.zip",
            checksum: "71500505676c9b220ec4141f8b2173b0506f1ff12fa9b69e5173f4ac0182318f"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "facfc69c12dfe21362b54d2d08964263d67a6897d986f1d5d7963f2ae2b81ba4"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/OtherPartySDKFramework.xcframework.zip",
            checksum: "16b419862641184769edb6475b93576170f8078ed09635c3ba7c2a845c8a0cef"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/QQConnector.xcframework.zip",
            checksum: "1c64210f49f09fee62f0b8ef21009c851c7f956137cbddc07d75d12cc61346a9"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/ShareSDK.xcframework.zip",
            checksum: "704c13402992fd836be8f6127d5e51c221de8643b6190c9ecc03a967fe42dc54"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/ShareSDKConfigFile.xcframework.zip",
            checksum: "787332ccaab98c27e069802a67dc5a9c8e60ab243318421b3d841d586fc89995"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/ShareSDKConnector.xcframework.zip",
            checksum: "86915117734541ec046691870482a75f8c84d5ffa99d104ab4d2548cabd3d5b2"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/ShareSDKExtension.xcframework.zip",
            checksum: "c0eb432760b5a769d333dd9adac544eafceab327ac7ed3410b61e2ae3d28a87c"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/ShareSDKUI.xcframework.zip",
            checksum: "87bbd84ebec34c8965679434c8a92397f73c6dab68e5304fb1416ad403ace761"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/SinaWeiboConnector.xcframework.zip",
            checksum: "2f264eb70f9abc814b1c2ed1e0c9d89449a04fddcea8ccd38ffd8d082d89bb4a"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/tapsdkcorecpp.xcframework.zip",
            checksum: "4f1c83e263f537dca138a2759dbc22a0274649925dc774f746ec02037dace661"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "ab3f2e3c3935aa2b06fb335b5405b3b2e443749d3baeeddf44a63dded7478a18"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/TapTapCoreSDK.xcframework.zip",
            checksum: "873ab4a81c006882727b72c7b3041d612334a076fbb85ef8605cda144667e2fa"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/TapTapGidSDK.xcframework.zip",
            checksum: "7639b3fe7e3b3010cccf03ec58107ff9d6fd251d6a6a2b64e86b183d83f0694b"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/TapTapLoginSDK.xcframework.zip",
            checksum: "b5505139cde1ee363b1a41289f372546996539fe780c97922985ac27701b7f77"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/TapTapNetworkSDK.xcframework.zip",
            checksum: "833117d1de3667a47b5a1fa18cb7e65d771944b475c0355472bace8987e9f1a0"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "daa5df84063c9aa17bf93604dce0d3591de50121e91764ec3ea5c7a71ecfcf9b"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/TapTapShareSDK.xcframework.zip",
            checksum: "48a80ed5d7b71fc58274653e35a8e40866564ef191e309e4749e003215b86c2d"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/TencentOpenAPI.xcframework.zip",
            checksum: "8541719bd841c0c566f0d0e335bb9fc9566bcaca2354390031cc97e2b8be8a1c"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/THEMISLite.xcframework.zip",
            checksum: "0d6a8095321b50a8d256351fb5cee73310dd3c6e32f80a53ae9eb33b125f6624"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/UnitySDKManager.xcframework.zip",
            checksum: "f8d20cd462ec1843067eb25f6439fe583a7518d35cf5656ddd24b2c2ce9d5d0d"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/WechatConnector.xcframework.zip",
            checksum: "1f19431e20f5a24ced0f733e583d3c9f272deb9f7f40d9a365b14cd0b999fa5a"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/XHSConnector.xcframework.zip",
            checksum: "4758511928f3339acc26a007fc62b88fb2f9a06fba741e9144b54466c737b7e2"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "fa4ff057814482674ffedb259e9bc249d729af16846e82aeceaf744463e33b29"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/YTXMonitor.xcframework.zip",
            checksum: "7b5edc1f468a90a677652786d9fa5381a0a4a0f3d7b4f4342465ee6fff44046e"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.2-dev-1480483/YTXOperators.xcframework.zip",
            checksum: "5b47fd9f5d5abb526b02ce13ffcfb93b498fbe9d576aaa5d588f3f5abac67efd"
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
