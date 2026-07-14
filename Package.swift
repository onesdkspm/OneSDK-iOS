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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/ATAuthSDK.xcframework.zip",
            checksum: "1a6c8b8d92685651090b07e17d1bf8d7e3ae9008d2b0e917204bd0e11835c224"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/DouyinConnector.xcframework.zip",
            checksum: "1b92a4399fce119896c9092cff88adaa1707c18306abca0051013b93828e6601"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/DouyinOpenSDK.xcframework.zip",
            checksum: "2244739b8608f802cb62a2e2a05ad0173224ccf027f638525fb5d59e33d39011"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/FlyVerifyCSDK.xcframework.zip",
            checksum: "e3e0c18e08c64063d9730c809517b1733a041ab59780e7eefb9ceb07105159e7"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/FMDB.xcframework.zip",
            checksum: "a440b1c05d6fa9208253d8be757c36ae46276b823ca94cd0cdb45b1f45c666aa"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/GravityEngineSDK.xcframework.zip",
            checksum: "c0da8b104a1cd8f52d5478332eef8dfc3e3cd18e2810533aa04869b1715d46e2"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/KuaiShouConnector.xcframework.zip",
            checksum: "ec915ef4b766e9dfc3d8ede911c0734c84025c1f85071f316848b15dbc4169a9"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/MOBFoundation.xcframework.zip",
            checksum: "4d56129f12594eb453fe26ec13f5e6b04d181908fc40b0bc9c07a5850bbd5e45"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/OneSDKAccount.xcframework.zip",
            checksum: "427d1b6b42064dfabe45dff9ee602519507550f078b52cb53079c944a03c3427"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/OnesdkBaitianFramework.xcframework.zip",
            checksum: "5199cba1a757224e86fc87b3c4ea5199679384bb72d6b821821c82755f3bb7b7"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/OneSDKCommon.xcframework.zip",
            checksum: "562a9740ba7120306bd5e9a6a3057957fbfd16cac3522f6b01b58345113a2222"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/OneSDKGravityEngine.xcframework.zip",
            checksum: "d644d95575b72c5df6ebe114ac32bb45bea34b6e750c45837ce598024c27bc5c"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "162aef61ea905190b497330a7f68ab7f7186c17bda5377cb2bbf4ad77f74a89a"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/OtherPartySDKFramework.xcframework.zip",
            checksum: "c7b04f7cca6748300997b26bb7e57e3b6063cd0d8dcfe2eaa101370abfd6492e"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/QQConnector.xcframework.zip",
            checksum: "7d85a5b8bf8db5b321611df841971dd5c74f3b51e7fd57ea027a901a6ed17542"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/ShareSDK.xcframework.zip",
            checksum: "57fb2f28700b43fdf0d69776675a56bcae2f2679ae31d643e694b48216f2902c"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/ShareSDKConfigFile.xcframework.zip",
            checksum: "e39b57e93755e09a9d661bfacf68c8d4f690adbbdba91b512f3af0772084e154"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/ShareSDKConnector.xcframework.zip",
            checksum: "983d51cdf5c56e0acde25df3a5818efa5104151cf7edd1978f25a1a5e32f1886"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/ShareSDKExtension.xcframework.zip",
            checksum: "238b38c73c97220f8373715b696971ad890a4ec8eb570f862199cc638216ac23"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/ShareSDKUI.xcframework.zip",
            checksum: "92e3a140673426000b5807a1fe4dbe3954a01e3f1b5aee2b47dfa6c940c99378"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/SinaWeiboConnector.xcframework.zip",
            checksum: "8916ee89b92e013791d02fe89297ebc2af0b37dca4ab993e0eb2f2cfa2300164"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/tapsdkcorecpp.xcframework.zip",
            checksum: "6c28f916e4dee0f9911bee2c344840a32539e0de0252b016c779b5a27b5ed908"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "0c84c10623b08389e3f41d8ab1687b50a5630dc0ad18ed9225a84294490c6d1c"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/TapTapCoreSDK.xcframework.zip",
            checksum: "16e1846986ddd745387d67f264764ce527cba5a92ef01a74cdb8f90fdc25ee48"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/TapTapGidSDK.xcframework.zip",
            checksum: "4623cc40a5ef9d82864ea88fc18fbaef729d29a1c30891b3bc280e0411a26b85"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/TapTapLoginSDK.xcframework.zip",
            checksum: "9e1ab6e4cd96589461564af85eae7f3e47f20c66a0db32eed57aadbd62c4b489"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/TapTapNetworkSDK.xcframework.zip",
            checksum: "7ba0e0072abb06217420b5c633f960a7d46409df19c792eab73953d9330cc2b9"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "9593cd1d01b9456105fbd9d815324fa7b9f52e31460680b68c437dcff7f770ce"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/TapTapShareSDK.xcframework.zip",
            checksum: "980bc542d93264a0acfab4821a476a8d7e4c884315660b0abb11ae63f50f192f"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/TencentOpenAPI.xcframework.zip",
            checksum: "23eb3e6e3e977f2383cbfdb956a6cee6ecf24e68ca391ae6ae91fd5d619c196e"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/THEMISLite.xcframework.zip",
            checksum: "6eb9709e7e1a74590f78341439ce677ef10f10137f64bbe7bfff284989628399"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/UnitySDKManager.xcframework.zip",
            checksum: "76b55397728ddf3dff6438fa031a3fdf0aa12550d22fcbafc0c32408ff251a36"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/WechatConnector.xcframework.zip",
            checksum: "e03f0cb53520644d4df2dbeb070843c8f2cf2bf26bc0cc321fb5e3b8f8f98c5f"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/XHSConnector.xcframework.zip",
            checksum: "527fe55a509351c5de0d2c423982399607b1dce8bff29039ab2ab9658fcee275"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "bca15c3564fe4fc8f6f91bd968b128219bd078c701abe71be9a77d6f67c884e0"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/YTXMonitor.xcframework.zip",
            checksum: "00b100738121e9f03deb4e8444a6d55ef70221a93da4ea0d71d6aaf7a2b130ae"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1484594/YTXOperators.xcframework.zip",
            checksum: "8b50ca50fc0facbd8f3a979b0aa855e350dfb4d4e7d3f221351980357a024667"
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
