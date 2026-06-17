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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/ATAuthSDK.xcframework.zip",
            checksum: "00b3217a807d04eab2f2e2ddba39ba2062319ae966d7c2befe803b88f4b59d7d"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/DouyinConnector.xcframework.zip",
            checksum: "23259c379f9670126e00fad0f59de23300360f261887881b7292abaaa226fb1f"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/DouyinOpenSDK.xcframework.zip",
            checksum: "850221306859e3615ae97428fc53fa754d3867737bf0c042584b1e227b2df55c"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/FlyVerifyCSDK.xcframework.zip",
            checksum: "7c21d2413fafc495e8c58c19e9d8d8ac8aba5db537e696293c8a5d3551ae00a7"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/FMDB.xcframework.zip",
            checksum: "d78d9356e11ba0515a00af31842f801bc0f96ff2350c13d993d7ba31f9d2f61b"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/GravityEngineSDK.xcframework.zip",
            checksum: "068c61fcce46a5d0b84285d00cb37518bc245f986f25401a4b6b6b533d452b3f"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/KuaiShouConnector.xcframework.zip",
            checksum: "45f589fc14187e093b5061ffc920a9edd309b2f03884c6effe7d24768cda0644"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/MOBFoundation.xcframework.zip",
            checksum: "94575383c3192033a5aaf9dfdb22d5ebec9706815dcc88fd34883fa4dcb7ee70"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/QQConnector.xcframework.zip",
            checksum: "99c2493df32220bbb1874d90bb059bdf3b09748c31db5c6898820520bd23c13b"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/ShareSDK.xcframework.zip",
            checksum: "bb0e23303e0e819e8bdc233b2f8c5cacae90a61d70c129493253f5ba1beb8422"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/ShareSDKConfigFile.xcframework.zip",
            checksum: "ae25013133b7007516bbbc37b773ca165b3f991d5a8fbc14b9073b2e3ac398bc"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/ShareSDKConnector.xcframework.zip",
            checksum: "22a6abb8623b35d5cf6a143e6bbda16a9f72ad8b7e0fbc4a4f295bd5ca233dd0"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/ShareSDKExtension.xcframework.zip",
            checksum: "ef9d0f89c6856b0c67a29bc9dd87751eba24aaef1585c22b501390b93c9be87d"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/ShareSDKUI.xcframework.zip",
            checksum: "85a3f862d9feed9fce570c649242e52f8f10286a05f98432e97954794c786924"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/SinaWeiboConnector.xcframework.zip",
            checksum: "4a2f8e2bab184927f17f035daab9e39e9bef076696c4ec6c56e9727e049a46ef"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/tapsdkcorecpp.xcframework.zip",
            checksum: "70a473bcf838ce903e19cabd2fe9416d44fd4f732c114babfbd86b3f2e387f70"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "44ac94f381fc4cd3aea5994899dcb85b716cc663749ffc308222bcaaa902b3cb"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/TapTapCoreSDK.xcframework.zip",
            checksum: "5de787a179e955989637ae3a1ef1b1c75fb3931a75e3b8cbb09747fe4dc91725"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/TapTapGidSDK.xcframework.zip",
            checksum: "2e9a31e51a910768e13634b39a5fbbf01c0557bcc0baabf8e48ed65b5dd6771c"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/TapTapLoginSDK.xcframework.zip",
            checksum: "e7ee13f8b8ed3e586e9df6e72b872515a55d617ef7385b60bf7fba85cd2b9417"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/TapTapNetworkSDK.xcframework.zip",
            checksum: "1847d5e9fd53ef3ff0b2b9b2a18a78bd3b1c2bd21b131a01de30351287accf78"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "88c8e6db3c4aec0884427669123dc391129c9cac5ed5db5d744a9513ddd16d51"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/TapTapShareSDK.xcframework.zip",
            checksum: "44160bd8a6dd391c8d26b688be5695de47b5e23b4a04635a3120b8dbd414c7cc"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/TencentOpenAPI.xcframework.zip",
            checksum: "641e8f07e4fc3931a5467e21db78503760274a2f18f5dfd956d359d7ed2a3b41"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/THEMISLite.xcframework.zip",
            checksum: "6d285498a2bafbea2391661db200d4f68279f92f77214db70c3dfa7ab921c763"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/WechatConnector.xcframework.zip",
            checksum: "54861d3f44a01ac7cfed6c1a46c7ce4bba7a446493d70060e4f825f7e4b8643d"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/XHSConnector.xcframework.zip",
            checksum: "cadca78e6f6c86c66ba4d04e7b2fb3e711f106d958dc8f67210302fd28fe3004"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "dce2d74f85a3d4ca9ce6215bf976dfdeb398c193d1da3d83fb262c39aabe1487"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/YTXMonitor.xcframework.zip",
            checksum: "65bb38ff4f8b02b3755e6cb6cd291af27062874a2f336b101afb9d65f251999c"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.0.1-dev-1466934/YTXOperators.xcframework.zip",
            checksum: "25a7afbd90de24c067516998e2a3cbf1ad6317c1f994fe8ff32f9f1ced24e898"
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
