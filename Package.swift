// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "OneSDK",
    platforms: [.iOS(.v0)],
    products: [
        .library(
            name: "OneSDKTianti",
            targets: ["OneSDKWrapper", "CommonResources"]
        ),
        .library(
            name: "OneSDKHappymaker",
            targets: ["OneSDKWrapper", "CommonResources"]
        ),
        .library(
            name: "OneSDKQutang",
            targets: ["OneSDKWrapper", "CommonResources"]
        ),
        .library(
            name: "OneSDKHiddentianti",
            targets: ["OneSDKWrapper", "CommonResources"]
        ),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "OneSDKWrapper",
            dependencies: [
                .byName(name: "DouyinConnector"),
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
                .byName(name: "THEMISLite"),
                .byName(name: "WechatConnector"),
                .byName(name: "XHSConnector"),
                .byName(name: "XiaoHongShuOpenSDK"),
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
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/DouyinConnector.xcframework.zip",
            checksum: "2d0676d00e8143edb866acd46ff9616bc1876cf2b9231eb7be297ca712345ea4"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/FlyVerifyCSDK.xcframework.zip",
            checksum: "d79fb70b1e8883b6d8a085f1e5ca3d016d974e10be0b0153dd3cd7e352effc51"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/FMDB.xcframework.zip",
            checksum: "cd00b0cbc60e5f271bf290b2ee702bbb7f2a243e21e506674f3430ca2d3676c0"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/GravityEngineSDK.xcframework.zip",
            checksum: "694f0c40473ecf2d39f50f32e2aa42c63059486b9c124f52934c304a2105b055"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/KuaiShouConnector.xcframework.zip",
            checksum: "147bf3be9fb06019d4dd06ea1c4a327c5699b31172e2e9fc51a7c4c7fec4ef00"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/MOBFoundation.xcframework.zip",
            checksum: "3e0e31459785d1a328b3fbb2c7b841d96787a8dfd95053bdc32606e4869875d4"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/OneSDKAccount.xcframework.zip",
            checksum: "31cc24e29d4072589044ec55467f0601d03cf41d78e78dda6eae11b5b96b2fa8"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/OnesdkBaitianFramework.xcframework.zip",
            checksum: "4c28629b81dee7d810e88cd824931ee3a8cb46d0c9cd7e76bcf064dbe25a8b11"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/OneSDKCommon.xcframework.zip",
            checksum: "31534e715000a8edd48dac6e939deffb049f4e5c748e1eac0c71348ff5fe15cf"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/OneSDKGravityEngine.xcframework.zip",
            checksum: "f5a6772ab42eb3f8036b7562d2515df065cfb9aabd30fbdaa6e5f24c7315c75e"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "a08d03305ed92d3d47d838d1ca33e828eee5d2746428d5e7046f62aa043a0fb7"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/OtherPartySDKFramework.xcframework.zip",
            checksum: "cd37afae711b10571f59e3876e896f2b10cf1e5f482a4e59ae5a5d5febbf8b99"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/QQConnector.xcframework.zip",
            checksum: "9064ba4c41c569f24cbfb0c926897b3e129d591a181c14b3a438f4ce83fd593e"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/ShareSDK.xcframework.zip",
            checksum: "5dbbee660f8160cba69ea7a86b5813a7429988e2a521ff139d0c431feafe539d"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/ShareSDKConfigFile.xcframework.zip",
            checksum: "adc3b1934e42e76ed1eb93905ff5d000330ddde5a525f9ee5c4c91076cab73f1"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/ShareSDKConnector.xcframework.zip",
            checksum: "8f0f946f049bdb30e79f0144132797cfa0588ea526d910f596b41b4afdf5bd36"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/ShareSDKExtension.xcframework.zip",
            checksum: "4784e7ccaebb9c5e1fd0c3d08e49b9f04dfaab81aa4de28d505d30e2fd6433e3"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/ShareSDKUI.xcframework.zip",
            checksum: "1bbba5ebb4b8b80b29278cbe57b27cf921013b0f25b3f84eb463c3e67db6d81f"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/SinaWeiboConnector.xcframework.zip",
            checksum: "2d73d8233b73dcb74dd9c78d75d430f8965caa450c182d7df8fa99ad7909d57a"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/tapsdkcorecpp.xcframework.zip",
            checksum: "726279bd22383deedb7c457b2caae9ba73de6cad0840129b7734703349e29ed9"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "c795d49f03a38ec8da023f034ee213a3e0c7aaecb9546b2a3d5d62ce0edbe945"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/TapTapCoreSDK.xcframework.zip",
            checksum: "b775e2e5ec34b54fc357102f521ad961241635b7d37f6679901cf6e1e96c0e83"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/TapTapGidSDK.xcframework.zip",
            checksum: "3dc0ad0d892b9d1e06eab74792a74852a9ca5d41897760f60d771958d18c6a79"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/TapTapLoginSDK.xcframework.zip",
            checksum: "9b633e9d51228a4b0ecaed792c3180f26118197cadda66cda44a030eb350e8ab"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/TapTapNetworkSDK.xcframework.zip",
            checksum: "3f83aa1328a23916dbc839f64d2833f154bd279daf3528375fb17d40423babef"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "fc09fff9aa5f88bfdaefc9a516cae403dc144ec8623535dd8ea69856924c56fb"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/TapTapShareSDK.xcframework.zip",
            checksum: "04509314b68f985b80f1597ba32d60b110fb20af5f0a8f00cf75b190a098bb6a"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/THEMISLite.xcframework.zip",
            checksum: "5501828ffc369f5c753b975b33f99f547eec194e1dbb6a4529b757817f1e6451"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/WechatConnector.xcframework.zip",
            checksum: "f4d31683f637eb7b7d38fbbacfe98ffe4de42de7e75f7b853e95e6caa2f0be19"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/XHSConnector.xcframework.zip",
            checksum: "22b55c01c1f086f24800e77ddd3a09d9e4e86bbe1ec2a6f7ff3c64ee63b9fef5"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.1/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "ebe94c078620739fa1eeeded757d5923302cca9792425f4e61ea5fd4e294cba8"
        ),
        
        // ========== Bundle Resources ==========
        .target(
            name: "CommonResources",
            dependencies: [],
            path: "CommonResources",
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
