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
        .package(url: "https://github.com/onesdkspm/BTWebViewKit.git", branch: "develop"),
        .package(url: "https://github.com/onesdkspm/BTLoganManager.git", branch: "develop"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/ATAuthSDK.xcframework.zip",
            checksum: "905d20879c9008280934d4ae3cbbf3b62b64b9b946de31102672624d47237980"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/Bugly.xcframework.zip",
            checksum: "414a05c572b9caa0539ae1782e46b725f261bc7af0dad585578ce3791084bbf9"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/DouyinConnector.xcframework.zip",
            checksum: "a2d112ec530832e518b58abff5cbdd1a5ee2f5f6b80e3e2982eb94a6e7d78eff"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/DouyinOpenSDK.xcframework.zip",
            checksum: "266f6e044c1d5572fc7c07313109bd529c0359b9ea660375d4e64c65b5ae5703"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/FlyVerifyCSDK.xcframework.zip",
            checksum: "d82da3b125d347f15c1d51b035168d1bcab9eaa118b8ef8b6b5e63976c98f7db"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/FMDB.xcframework.zip",
            checksum: "3507bf376e9ca23a43c106872e201ca4ce8c8642f63ed40818b75c045f5c63ab"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/GravityEngineSDK.xcframework.zip",
            checksum: "7d67c90e1ac1f0db51da45942f1e5326e8f40cfb4af102211a9152ee09425c86"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/KuaiShouConnector.xcframework.zip",
            checksum: "cf14d9f3d8363ac7c65cd3940ea478c411a92bc4e1275345f0566edad01fae74"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/MOBFoundation.xcframework.zip",
            checksum: "2582181dab4568b7c29033da9c5fe25c85da43b4af626ff8dad4ac1779843b21"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/OneSDKAccount.xcframework.zip",
            checksum: "b6ccfaea9964377affc0994def8529f487ac0d55b2cff47fd8104ec87c02c61a"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/OnesdkBaitianFramework.xcframework.zip",
            checksum: "7f94ed4e13b1e11863abddd93c736eb58ac6f5c6ff353944607d868f68f181f4"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/OneSDKCommon.xcframework.zip",
            checksum: "4d4a4d020fae51acf69d40933b08626fb2354719401821b553e2dcfe2ca94230"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/OneSDKGravityEngine.xcframework.zip",
            checksum: "17d52f413419e6e71e47720709f1f25735d4ef4211522f57f3eb1aeff44e1340"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "5835371ac609dae0d5ddeaa4b8d238d2fa69afde442e07c386caa9cda552e44f"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/OtherPartySDKFramework.xcframework.zip",
            checksum: "44940fac6f2840867cc91fabe5bc4cc991754e84717cc8df48b45840cfe04f45"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/QQConnector.xcframework.zip",
            checksum: "f87a8c46cbb9bb12c7abe889d47a2b5eab14ec9e004b2104531301bc0876b9f1"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/ShareSDK.xcframework.zip",
            checksum: "039662b5cc939cf48551ef6233d3a1a1cd184d96527dc362c5c2fa528632c8b1"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/ShareSDKConfigFile.xcframework.zip",
            checksum: "bfe4288b75aa96af6fef3440f7b3146f0d3da892f8d3a6d53e5cac303b3d7bd7"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/ShareSDKConnector.xcframework.zip",
            checksum: "8ebf4859704bc2823204d73ed87ac356152ba1a40f06b0418db750fe7ed6fe99"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/ShareSDKExtension.xcframework.zip",
            checksum: "4f2bc91502e6fa2d4c6b0366994c2e4bc9d2a63b9d3873cc24df2e1dce96b94a"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/ShareSDKUI.xcframework.zip",
            checksum: "0955bf8c0ebfde0292e100baa2eafb22e98ec7ca9fa13f277843e83da41bd6b0"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/SinaWeiboConnector.xcframework.zip",
            checksum: "358fe82ef2ef8c7f1d602043dea817d5d81b787625cca0cdd24f4f57ba144b0c"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/tapsdkcorecpp.xcframework.zip",
            checksum: "6bbff072f72b2ead8a37a8aef8eda0e8fd66c4c500a63e976c5e9a2da6920757"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "5d2b8e6ab616d3c5a227ee42b96e70b55ed1440f320eada9434a61e7089b1417"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/TapTapCoreSDK.xcframework.zip",
            checksum: "d505725880e9598139cd2b1baaafff301be83095c2016deeffe7a39f98f97fd4"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/TapTapGidSDK.xcframework.zip",
            checksum: "e5a2f5c33ec732f7da778f16e730480d214d9c694cd3f9d8c2b5636a1b3833e9"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/TapTapLoginSDK.xcframework.zip",
            checksum: "d1a58e478eb60ef09b30ee222b8630d1f4ae780000b190b3c203f9d7268ee344"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/TapTapNetworkSDK.xcframework.zip",
            checksum: "3249a9fc1f127a2d0f72959e6f09e4f98c688fc8d4cfd3eeacfe8224e02fadaa"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "4b16cab2981c81fc28995fead1459f73ca3f5456cbedc589b7e564160f1d9b6c"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/TapTapShareSDK.xcframework.zip",
            checksum: "8d320adbd994fc2b40175464a102ce22c0773ef52d2324daf96799c787837339"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/TencentOpenAPI.xcframework.zip",
            checksum: "2a967f37abb078f06ac939e99a1e0b28333df94eba991441850e6e1bf6fcd9bc"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/THEMISLite.xcframework.zip",
            checksum: "c6bbc4691a28c2d7d62365a22becff17c88d0c3ebe95184d9255211cad114236"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/UnitySDKManager.xcframework.zip",
            checksum: "8223fc778e1d494d0e6ad2d575376d4f1a2d6925ed020d44e0b9ac7a5b6ff5f4"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/WechatConnector.xcframework.zip",
            checksum: "664985ad458aa44807c876de1e4eab70021b81a1529f06340020207c79cdd9cb"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/XHSConnector.xcframework.zip",
            checksum: "736808b2af67cc97572446da1626fdf54d671d9968538e98a6d053069615022a"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "49d7006ed80a01c750bf79488fdb218b58cc780bc152f393919dd0c7ef07e9be"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/YTXMonitor.xcframework.zip",
            checksum: "fc26b3af70f491c5844309c869476e3aa25d763a56e928c6679382da8cf8f509"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1410587/YTXOperators.xcframework.zip",
            checksum: "5c464a38cc1523a8ed0bfe89af3ffe2b82ec116c15cbdd739ee11df348e63a6e"
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
