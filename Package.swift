// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "OneSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "OneSDKTianti",
            targets: ["OneSDKWrapper", "CommonResources", "TiantiResources"]
        ),
        .library(
            name: "OneSDKHappymaker",
            targets: ["OneSDKWrapper", "CommonResources", "HappymakerResources"]
        ),
        .library(
            name: "OneSDKQutang",
            targets: ["OneSDKWrapper", "CommonResources", "QutangResources"]
        ),
        .library(
            name: "OneSDKHiddentianti",
            targets: ["OneSDKWrapper", "CommonResources", "HiddentiantiResources"]
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/DouyinConnector.xcframework.zip",
            checksum: "636089f3315857675f32b5c38bc80b661d8060ed165b560adfa5166eea0ba4eb"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/FlyVerifyCSDK.xcframework.zip",
            checksum: "7bd97322dc22a6ab4d5765f79dd11a983af69ef9745a0597cf79226dcafa0994"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/FMDB.xcframework.zip",
            checksum: "7b08aba5608122be958d7e05946e4fea753e8cfe77d047f85626bd778ea27e38"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/GravityEngineSDK.xcframework.zip",
            checksum: "bb1d855197b9971da3136d8670700efd63ae8999ed4fa6d87ea220e92ddaba22"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/KuaiShouConnector.xcframework.zip",
            checksum: "e322f90ce609cab35c44fc0e74cabdb8f6599d1a3ea19206724cae64488d7f4d"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/MOBFoundation.xcframework.zip",
            checksum: "bdee204fcc21bd9f7fd2bd07396dfe3329e7ef8fc32c566fe2f31aed8b9a6e9a"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/OneSDKAccount.xcframework.zip",
            checksum: "dec882bdf107aabafd1e5cffbe3a32d0661a0ab292f1e490d62ade36c03b02eb"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/OnesdkBaitianFramework.xcframework.zip",
            checksum: "8cbb36d7a78c2eb06a3c6b1925727b71f0e7c6ef4f7fee9009ff8908f280913d"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/OneSDKCommon.xcframework.zip",
            checksum: "1df340a1316b37b6c039cb2a64de4fdca1ad56c461697e3504126e97bb874522"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/OneSDKGravityEngine.xcframework.zip",
            checksum: "19dbc7d5d8514a126cccc06309124226bbbd4a077faef2d181853ee09071da82"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "a9eb3451ce2fc38d77e1f28fe361b346c7c0d1023bafa78f5b97bb082a54d11f"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/OtherPartySDKFramework.xcframework.zip",
            checksum: "06d3b8f90517a1bb5158baf4a16a01061f2c8fcdfff66c132cd7764b579c9f97"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/QQConnector.xcframework.zip",
            checksum: "76f3fb1a76d0c776d5309478d98e6407db79220a21fded2874adf419626101f8"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/ShareSDK.xcframework.zip",
            checksum: "e38ffa66900db29140733f0ef1d75bcd2dace2e6adb376c464e2e2582ff4233c"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/ShareSDKConfigFile.xcframework.zip",
            checksum: "2902555cabdb6f0856d58dae499bfe0efcf177d494c4dbdf4449abe276e6145e"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/ShareSDKConnector.xcframework.zip",
            checksum: "b31c1010b9388e2825de1facc385c1b6375c1619e13f3dc95ad154554d62cf98"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/ShareSDKExtension.xcframework.zip",
            checksum: "297edc9d2d57998cdb3de570b1acd1baacfad2c6291c5bed6669fea1c5a7bb11"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/ShareSDKUI.xcframework.zip",
            checksum: "429ad60f36115af65f8e81eb14b4562af706f521ad02afe08897f7fd18657041"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/SinaWeiboConnector.xcframework.zip",
            checksum: "6e159ba31088b7de1667ac8c4a8452c72eba6ee907f32a8a99da2f18760da33b"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/tapsdkcorecpp.xcframework.zip",
            checksum: "45c4e47355b8a4edea8a69e7f3524e41d43269ce0b407c0f88fdb947c0d626a8"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "e152af8c58b8e5468ed45f268e984bc9109ceba6c2a0cc9c92d0139722369f8b"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/TapTapCoreSDK.xcframework.zip",
            checksum: "5ed9d64a8bfed9d02ff22475a37f68fa60725505dd73b912a374f57e9642f7b2"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/TapTapGidSDK.xcframework.zip",
            checksum: "e0cb84a5fc1c8f7f2031d4b8ed6a502c04029f3816aec95443be48bcc9a34d0d"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/TapTapLoginSDK.xcframework.zip",
            checksum: "a7556f55e53727f6af95eb3fa56e9373894aa44ad28956b22f9b3654236351c9"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/TapTapNetworkSDK.xcframework.zip",
            checksum: "e62ea83364ab78ea7ed96977efe50953313436c160b61936c7bfe3e625a7ae9c"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "8c75986f6ad024d00af853bc3c40bcc8409c3c2bb0ce2204a9f8c2e60e4f50de"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/TapTapShareSDK.xcframework.zip",
            checksum: "d58b1f795c049b867fd8d48c0dca4c4b3064fc258a43e5d07be4ddbcd843690a"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/THEMISLite.xcframework.zip",
            checksum: "2679af162cfcd6d2830e56cc20198871173c3f731a7ff8cdbb1ac058abecf6ec"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/WechatConnector.xcframework.zip",
            checksum: "2558b69712436389063ea402b9480e26dc9fd35467c4a26472cc38f74c1e6b99"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/XHSConnector.xcframework.zip",
            checksum: "d72f677766df61a0cd3de133904e253ef93e60b024b91f8f8d6eb3d038d7a23e"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.2/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "abb6c6384054e8b9b8d720da04c77bea8d0a1c05226d6791bb411385f716c5ec"
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
