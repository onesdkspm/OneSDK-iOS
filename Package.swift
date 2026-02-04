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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/ATAuthSDK.xcframework.zip",
            checksum: "344254711266811a041c6d3cc85a196074114b93d17f5d075694e67b281323c5"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/Bugly.xcframework.zip",
            checksum: "983340109de6654c65689417f46a013518865e88ce3b5ec1719e4598e1817a9e"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/DouyinConnector.xcframework.zip",
            checksum: "105eb2650094dd1a0b8ade7a47b5f139e50b03deb64f428abb8fcd553be17c06"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/DouyinOpenSDK.xcframework.zip",
            checksum: "fe74608df52a216f4380a61d6c58262c9ad8bcd959ecad55384c3b2e3d5abbca"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/FlyVerifyCSDK.xcframework.zip",
            checksum: "f6bf2d656ff869ff1b58548b48738b6dbaf2407e39d339a7e86efcff618fb58a"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/FMDB.xcframework.zip",
            checksum: "7cb85d393cbc16a4be582960ce48fb0917f2a77976d8ef2f0d6a6cdd513d8fe1"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/GravityEngineSDK.xcframework.zip",
            checksum: "28120bb1e2136465b69b7330916d4e45f2b4f9a3403b26246782ae1782cf9fb3"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/KuaiShouConnector.xcframework.zip",
            checksum: "c31da4519ad4e76d20c8cdcb5422a92920828a4e96002612fd3c7e5072bdeed3"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/MOBFoundation.xcframework.zip",
            checksum: "a53790278f7536be13e6ccb98e2cd182a1d5fac533e0f389109c31626c62c9cd"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/OneSDKAccount.xcframework.zip",
            checksum: "ffe3697d25cdf012b5221c1e6e6b83f64987dbdd2c0d66b2f7485799f2330a68"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/OnesdkBaitianFramework.xcframework.zip",
            checksum: "e680000aff46dd005ae27145e9964a73cb3fe74f74ee21fafc21a7ab92c2ea86"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/OneSDKCommon.xcframework.zip",
            checksum: "dfc351a2f87598f9a9cf1d02dc2f2b6b7c54c527aebcc2952e0cc2604bbaf311"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/OneSDKGravityEngine.xcframework.zip",
            checksum: "499302c547f54f06e3461eaff0548b241e7271e5504307485fec73abd351ff68"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "060f2d35a7a702466816e2792001bc514579dd94e19caf7791b5c6b7624e7011"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/OtherPartySDKFramework.xcframework.zip",
            checksum: "052950052b85d91dda555bc3122b66cb8f99849852302d4bebb0095f57d1ce63"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/QQConnector.xcframework.zip",
            checksum: "8cff282bf9d2bb091f250bca9432ad6e6a525e3abd7a361799db03a9210530b6"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/ShareSDK.xcframework.zip",
            checksum: "afa0dcb661f3df7bbb83c9da7504b66ef644848938fc628158d0bf9585235967"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/ShareSDKConfigFile.xcframework.zip",
            checksum: "e3dd6f8112335ae885620091d41c6d885c0c1ed52b9950fa6ea2c4eb431fc4d9"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/ShareSDKConnector.xcframework.zip",
            checksum: "fd0f4860077ed9969a2182f89ed89e1c57d8048bc7a96520e87dc4313a4fbd0b"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/ShareSDKExtension.xcframework.zip",
            checksum: "b84aba1848da6fd2836996f4a467e9cb7241df3cf7ccac8d202580ebbb2b8491"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/ShareSDKUI.xcframework.zip",
            checksum: "7d9303afecb900f17a285a2fe612a0fd7eb0e0ea94113b2e7511fc942e152bef"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/SinaWeiboConnector.xcframework.zip",
            checksum: "854d19296ea322438f143801826798be37ecc893cf73de4d273fe1794eb581cd"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/tapsdkcorecpp.xcframework.zip",
            checksum: "8632254ef567da861154ecd57fbcd6a47b5dfd970f9fce514dfdb952ceec4763"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "001accd405267d069dbb51d0a5f219f2a8cb6fc46b31a7140d116ab67ae25789"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/TapTapCoreSDK.xcframework.zip",
            checksum: "f7ba711b617fcbb6cbbe8647d8c81dce5ebef9d5682287205cc199f4042b82e7"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/TapTapGidSDK.xcframework.zip",
            checksum: "bc696965005ee245dcd4d79ba7654154f6d58fe5ed9d50be83fd12777057fd25"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/TapTapLoginSDK.xcframework.zip",
            checksum: "103bd1ae535f2bca8493d57b65ceb0715a474ec646cffc304bfe7d84e8de99f3"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/TapTapNetworkSDK.xcframework.zip",
            checksum: "af705551acda2e4fba8b76b12565ded84be18d892253e82fa47741825995908f"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "8b32b420a02448d1e14c8792ad062fdccf3336941e8f8876fa0426b42e480b7b"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/TapTapShareSDK.xcframework.zip",
            checksum: "56fcce6178bd36432b71d63a41ab1c0221c47934c8c50773a1d7a258bca36100"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/TencentOpenAPI.xcframework.zip",
            checksum: "51572ee146469989d30ece1c3d1345a8969d326e9c79566212bb8fa21ba24fde"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/THEMISLite.xcframework.zip",
            checksum: "eff5204278f9fc7074001e968243eeaf1315503f4a8f3f7032d26150e76d576c"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/WechatConnector.xcframework.zip",
            checksum: "974eb249cdad8b631d3573d8db1e223139ab1bd5193bdf1edd7f88e9c7a95702"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/XHSConnector.xcframework.zip",
            checksum: "2077a434650e0ee8888713b43fb3c21360baf2c213f4e8d12a064f0c8edc60f0"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "9ff71aec7e4876874ed7e0f4dc287f43ad355184df0dd6e16cc17a6a1a284e8d"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/YTXMonitor.xcframework.zip",
            checksum: "abd83b5d22fe0b0b6c1a444a9ff656ef458991196ac2749dbcbfa1a2daaf0f13"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.3/YTXOperators.xcframework.zip",
            checksum: "875466aa8310b4170f8df07738e835412cfceffcdfa04e26702fcb5ea11c51c7"
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
