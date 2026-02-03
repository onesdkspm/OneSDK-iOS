// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "OneSDK",
    platforms: [.iOS(.v13)],
    products: [
        // 核心产品（包含所有框架和系统依赖）
        .library(
            name: "OneSDKCore",
            targets: ["OneSDKWrapper", "CommonResources"]
        ),
        
        // 皮肤产品
        .library(name: "OneSDKTianti", targets: ["OneSDKWrapper", "CommonResources", "TiantiResources"]),
        .library(name: "OneSDKHappymaker", targets: ["OneSDKWrapper", "CommonResources", "HappymakerResources"]),
        .library(name: "OneSDKQutang", targets: ["OneSDKWrapper", "CommonResources", "QutangResources"]),
        .library(name: "OneSDKPjm", targets: ["OneSDKWrapper", "CommonResources", "PjmResources"]),
        .library(name: "OneSDKHiddentianti", targets: ["OneSDKWrapper", "CommonResources", "HiddentiantiResources"]),
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
                .byName(name: "WechatConnector"),
                .byName(name: "XHSConnector"),
                .byName(name: "XiaoHongShuOpenSDK"),
                .byName(name: "YTXMonitor"),
                .byName(name: "YTXOperators"),
            ],
            path: "Sources/OneSDKWrapper",
            linkerSettings: [
                // iOS 系统框架（强引用）
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
                
                // 系统库
                .linkedLibrary("sqlite3"),
                .linkedLibrary("c++"),
                .linkedLibrary("icucore"),
                .linkedLibrary("resolv"),
                .linkedLibrary("z"),
                
                // 弱引用框架（iOS 12+ 可选）
                .unsafeFlags(["-weak_framework", "Network"]),
                .unsafeFlags(["-weak_framework", "AdServices"]),
            ]
        ),
        
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "ATAuthSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/ATAuthSDK.xcframework.zip",
            checksum: "c2f31dfc2baf295e104b8379470147b292af4e8e04c8624f4f5ded9ebd4a28a3"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/Bugly.xcframework.zip",
            checksum: "fea478ae64afa1ccea4067673f1b7a31fea4dc0a0173232112cb5c0e018f3174"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/DouyinConnector.xcframework.zip",
            checksum: "d3ce5633916764540fae9982dbdc30b41ddcc6346e8c4cdc06dd9b988a02968a"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/DouyinOpenSDK.xcframework.zip",
            checksum: "b8b333dc643cbce0eb224ea60b9e67e2360c3e8327f00e2a645d58a96eadf680"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/FlyVerifyCSDK.xcframework.zip",
            checksum: "366a457353e95adfb7e58bd2062b2e41dd7818b051a00f8979af4060ed72370b"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/FMDB.xcframework.zip",
            checksum: "d20e8afe53e1ca72137aae6ac3d14507e65f4e8075efd389e24c3e2c8499756f"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/GravityEngineSDK.xcframework.zip",
            checksum: "7b24495d17bb046d9e82a0415445c789f7aabf4173c7dc2e80c4b12f3c39d0a3"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/KuaiShouConnector.xcframework.zip",
            checksum: "2074fc303910e9a746eaafed405c8610c45e661436742ac2f3467dc8c1a380ab"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/MOBFoundation.xcframework.zip",
            checksum: "75fe326b1e3cafa7d9ca19afef7e54d1e23fe060cec9f22813ef951640e232db"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/OneSDKAccount.xcframework.zip",
            checksum: "d8c41706afaccbe13ad39b242e1f66fbe7b83dfe9e6d7482c763c50c033114cb"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/OnesdkBaitianFramework.xcframework.zip",
            checksum: "09421733acbfbba3cace0384addacbd25bf7b114340fa8bc0cb1b763c3331898"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/OneSDKCommon.xcframework.zip",
            checksum: "1b864a9bd56ffba3161b38320c24ea1b7c9efd0d40591e4f81f2e45f0b2f4531"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/OneSDKGravityEngine.xcframework.zip",
            checksum: "8b1ba2f96f6b8464b4abfe8a33513947bac175dfc629123b0416228036f34906"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "850641d1c13520ad7b5cd421694fbadc138fa26760028e8f3efd5c5c8d6db071"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/OtherPartySDKFramework.xcframework.zip",
            checksum: "2aa6186274a3709296c0ac76ccccf30f11d030f1683a1f745d470dd7a833414b"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/QQConnector.xcframework.zip",
            checksum: "d3a968e5dceaf4d92f78ed26325775556547c740a6d760b3e18e1a6a73a5b600"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/ShareSDK.xcframework.zip",
            checksum: "a87438b7a2a2cecf36def5a16388b11a4b2db525f9a3d17add4c33b7ce2aaf7e"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/ShareSDKConfigFile.xcframework.zip",
            checksum: "8053c35836f60a4561d2e09e813a18b2828dc1f98d2624487d6b722bba42efda"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/ShareSDKConnector.xcframework.zip",
            checksum: "92fd80ce322c9cc4f99571f5e2f3ec86ba66d56336ab00dd3f4fed90e470b4a8"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/ShareSDKExtension.xcframework.zip",
            checksum: "174d23db8395ef9fe50ef7e79e7703e406f03c65366f0543e67097f89e5aecf7"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/ShareSDKUI.xcframework.zip",
            checksum: "4c1c5c2aaddd43fc8199e0e5dcfbb8d6f74350ecd19b3ec1d276964a95524eea"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/SinaWeiboConnector.xcframework.zip",
            checksum: "1e566fee82519af0c6d4d756fcc6fa5931d848bae4d6a0d187c1f64df771e4df"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/tapsdkcorecpp.xcframework.zip",
            checksum: "b9ae6b21d6c2136d0f133f1c9722a4032df381abba8380e404faa9e77f738cc5"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "e72843176cf3a65c27e87bf05a7dfb7c3ae9570aede2d243f0dc4e8b285282d9"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/TapTapCoreSDK.xcframework.zip",
            checksum: "f73340a9e189ca309adfbf246edb45aa24fa0b6f3752bf385cc26a89bae18708"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/TapTapGidSDK.xcframework.zip",
            checksum: "e9f41aad29b1bc815d138dda101b7f11603a88e9ee59156425cb58c8ef8ce78a"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/TapTapLoginSDK.xcframework.zip",
            checksum: "c5603999eab8a548013057f16e7fb24aab8a5e409db95ad6010349f2abbef71b"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/TapTapNetworkSDK.xcframework.zip",
            checksum: "5d0e93900bbe032c786cd804dcd6847cad980ff1dbe3716b528512b451d7cb9f"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "e8f1c18431e107a0c848ec261a6d7b61da98c07bc2ae490c5a7288e522cea5af"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/TapTapShareSDK.xcframework.zip",
            checksum: "1b63e78ee71bb0e8ec6d0b6e8ced9064218d9afd742c9fecbd6b9a879c122bb9"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/TencentOpenAPI.xcframework.zip",
            checksum: "0f1daa51f33817121044940130e015eaef6ebd0417f5ca41e5374588f0240c95"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/THEMISLite.xcframework.zip",
            checksum: "0dfa1c3182baf3cfe9bc0a4cc0a6fb5f15dc526c5dad7c229cc97d2cf75a35e0"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/WechatConnector.xcframework.zip",
            checksum: "a4e225ec010be5d4c950f2679bee6f36c1b26881ea1fd3453dc45ca63e50453f"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/XHSConnector.xcframework.zip",
            checksum: "ad0dd169fc88e31d8f37ade4b136c08559f26583451bd5384748becd9032a199"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "1d8718993207bb2e3e98515fb08ba16044842352fb3815553fd05e6e639a08e0"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/YTXMonitor.xcframework.zip",
            checksum: "22f04cc22daa7fb7c457c6119a9ee1d0a49c7ea97a83da5e97df20c6bc7f1171"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.0/YTXOperators.xcframework.zip",
            checksum: "f88b9bf2120c4071b07e42c48ab0365ba89affcfaf3e63bb490909b965ff21fa"
        ),
        
        // ========== Bundle Resources ==========
        .target(
            name: "CommonResources",
            dependencies: [],
            path: "Sources/CommonResources",
            resources: [.copy("Resources")]
        ),
        .target(
            name: "TiantiResources",
            dependencies: [],
            path: "Sources/TiantiResources",
            resources: [.copy("Resources")]
        ),
        .target(
            name: "HappymakerResources",
            dependencies: [],
            path: "Sources/HappymakerResources",
            resources: [.copy("Resources")]
        ),
        .target(
            name: "QutangResources",
            dependencies: [],
            path: "Sources/QutangResources",
            resources: [.copy("Resources")]
        ),
        .target(
            name: "PjmResources",
            dependencies: [],
            path: "Sources/PjmResources",
            resources: [.copy("Resources")]
        ),
        .target(
            name: "HiddentiantiResources",
            dependencies: [],
            path: "Sources/HiddentiantiResources",
            resources: [.copy("Resources")]
        )
    ]
)
