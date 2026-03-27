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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/ATAuthSDK.xcframework.zip",
            checksum: "f5d6568e0e2bd6af02a5bff7f33313f99e4cbe76c54e6124f7729c8873891c09"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/Bugly.xcframework.zip",
            checksum: "ddc0c8882ccc6a59113d8e9c1e8e898e29c879b2ea639a9c8eb109918e3bb2aa"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/DouyinConnector.xcframework.zip",
            checksum: "39ef3f5f9d12d42acbeca5e6746d913f9e274ea6898a28f99fc317cd639cca8c"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/DouyinOpenSDK.xcframework.zip",
            checksum: "303f23dd3ccc0d0b9ee67536e0989e7a512091567da9a222de50cb9020b2250f"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/FlyVerifyCSDK.xcframework.zip",
            checksum: "f42e7566ba51bff001ed14437cd1ab3e84b9f17db526d447e4075cd1c2a63001"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/FMDB.xcframework.zip",
            checksum: "b93405273f15e1cd9bcc3231d553bae3958307d2a9635d1efd2047cc712c3500"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/GravityEngineSDK.xcframework.zip",
            checksum: "9eb8deef1c13344be3e087a0d71389f68a859d2969be92d5ab180b2b99c8284f"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/KuaiShouConnector.xcframework.zip",
            checksum: "ef4baad15b9cb2d88e783c81bc452eef6a735db8e5d30100bc5e5e9458938449"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/MOBFoundation.xcframework.zip",
            checksum: "6e539d4bb175f548697dc114a653080ddbd025fd33d2b118c9843919a3b9f516"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/OneSDKAccount.xcframework.zip",
            checksum: "19b69a81aa734a86842fe9b85f0c2e23494d98e1e99435f0d3ae7a99c17f0bbd"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/OnesdkBaitianFramework.xcframework.zip",
            checksum: "0e1a569fdf1c8b59daaafdc07141529c5597a9a5fa0c51afd840ecffefb56c38"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/OneSDKCommon.xcframework.zip",
            checksum: "c32902101072672bf630d2fbf2a2d00dac0a3ee987fdd9f264f075efff4f5da6"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/OneSDKGravityEngine.xcframework.zip",
            checksum: "f3b45708e1e27c9aaa1a2527bd54ea631b1cf2d274361dc12598fa9fec9c895a"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "9899291d23a6392ece150e3147b9854ede13520c97709d3b815741fc277f214c"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/OtherPartySDKFramework.xcframework.zip",
            checksum: "b7bd0c0074f666980741be236f49ee98680e8c48d5ed37cf2587fa0f1b8017fc"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/QQConnector.xcframework.zip",
            checksum: "719ea94119c91fa600a8e0bca970b0e348cdc38cda0b343dcbfbd09faaaaaf68"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/ShareSDK.xcframework.zip",
            checksum: "8028726dc9b4bc259f5c385b5a3949953a565b5e174d8817196a6a6004023756"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/ShareSDKConfigFile.xcframework.zip",
            checksum: "8dfd7f9735dedecdaed2a13e3578fac36f0e9169070c86431ff0242b286faafb"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/ShareSDKConnector.xcframework.zip",
            checksum: "f9d11f22c13a728d6d21ab65a6050eab746fff0bdaee08aaec4423137953f976"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/ShareSDKExtension.xcframework.zip",
            checksum: "1f5e319041d415ad4d27e498d8524a3781be2f3010b80b615af30815c0f357d9"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/ShareSDKUI.xcframework.zip",
            checksum: "b3a7e2f17816fa939ba489f4b04bda3e618bbfe07c3f593d171d0a07d3bdd905"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/SinaWeiboConnector.xcframework.zip",
            checksum: "1b3196178110c99cd07609a4008e2ea55eb2e1e2afff4277d2d189e44188edc4"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/tapsdkcorecpp.xcframework.zip",
            checksum: "7a6d8f44ccb562eea7644ba11a1ee051caca11b8947b1670c7b274cd065d2384"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "e2da2727509968d485755b04c9c1a6d97124376cce6087b207919e578f1f120e"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/TapTapCoreSDK.xcframework.zip",
            checksum: "86e9fb003c93759a81728074db835fc4c43832b0f827c2f46664d2f3c120063a"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/TapTapGidSDK.xcframework.zip",
            checksum: "0065e86fa799b4d6289880bee49032335788fd1ecee4f816d68223ca3d48a67a"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/TapTapLoginSDK.xcframework.zip",
            checksum: "39e4ea3966fb6d0bdcd3e0d746008de11eb8e663b6f90fe2561b03ec16fc8a0c"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/TapTapNetworkSDK.xcframework.zip",
            checksum: "eb45a5f93b99964b0aacfefd0a2ec2f40aa922066930ba5b1ed0b3c5d04f06b0"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "5f4a2165c6e7580876cd7a6188b07de3cc3182825ba3612403ce464737e6ad0a"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/TapTapShareSDK.xcframework.zip",
            checksum: "3508d132a9026a92c9a2a8800c8bf6d5c7cd21037d3af1c0682baac982da2d78"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/TencentOpenAPI.xcframework.zip",
            checksum: "deff0e27a61338f2c2eca455ccd45166a70e4c7f27139e6c83d50d38a0f4c6f1"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/THEMISLite.xcframework.zip",
            checksum: "680cfc9212556be36c9674691fde774cb8c70f555025cc4da2bb28ef3eae4c3d"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/UnitySDKManager.xcframework.zip",
            checksum: "b0654767057521f623a8fc900d1a7976d753eb22887fceb0bec358e35e1e8592"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/WechatConnector.xcframework.zip",
            checksum: "d058f5f65cf479c5f7636f32eebb934085e63aa087ef83b376c0ef0da6ec85a8"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/XHSConnector.xcframework.zip",
            checksum: "7b4daa58532108977d057f9cf6b366a0de25f2a632f3f8f0f577f166309d1228"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "c601c6da540b130f333282813045821888705bc36eeb1e59a6a44e07bd6d5079"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/YTXMonitor.xcframework.zip",
            checksum: "2f6f1f1c863009c64d4541eab2f9fa2cd1e805420c9e6079c78d89ce1485f751"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410849/YTXOperators.xcframework.zip",
            checksum: "f7034447b821c706754a7dce3d92f36f963e5fd30c17d8aa0f206d5a75fcea08"
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
