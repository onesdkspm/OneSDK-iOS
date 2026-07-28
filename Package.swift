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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/ATAuthSDK.xcframework.zip",
            checksum: "a34d5efb356603408610ca8386b684b8914358957f73c7e7ce075b758de876b6"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/DouyinConnector.xcframework.zip",
            checksum: "964d0d8405ea651b82b4b5f9b01fb9b991c6902b44dc7533aa30d6494b1dbc3d"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/DouyinOpenSDK.xcframework.zip",
            checksum: "c89ef251939e9868cce2d4027436b66e94e30bd079cd98cd118cbc7fc878b992"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/FlyVerifyCSDK.xcframework.zip",
            checksum: "5aeef88798b959b61d43069f498bf2506463cabb267e6c980abda8af0628784b"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/FMDB.xcframework.zip",
            checksum: "8866eca5bfb60802be768a9a51c5882ae59623a04950097740da2ef9fecc811b"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/GravityEngineSDK.xcframework.zip",
            checksum: "1e9d17f421a2c27ca98be2c3902a55e16e9b477ea20db25d26ee3731ba207e34"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/KuaiShouConnector.xcframework.zip",
            checksum: "48078bf5cf2e4654d3b6a7c6699f92dd7f13160ee6cad967927d9b0bba4935ff"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/MOBFoundation.xcframework.zip",
            checksum: "f26ff262d8164f976abb93439d7977925550803924df1357a41010f1162ea1b1"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/OneSDKAccount.xcframework.zip",
            checksum: "6fc1349efe9a99352ea71708dada59853af2486a7ddb83daa3e05bba4d9dcadf"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/OnesdkBaitianFramework.xcframework.zip",
            checksum: "c61a7b40c25da5f24c75c9c316613ef6323a575e05a3838d9fb76158ab3551ea"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/OneSDKCommon.xcframework.zip",
            checksum: "56720bcce452989c903ca74bac641beee45ea744cd53dcbca4e97b6a57e5067e"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/OneSDKGravityEngine.xcframework.zip",
            checksum: "4cc715dfce78fd4a15e381daca253a36e535c1f915bdd4679b69595da66755c3"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "2c79133662c783d7b94814c977bc9cc1eb9cb585aea5b66d6da56b46750dfe5e"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/OtherPartySDKFramework.xcframework.zip",
            checksum: "8c382ae5a728ee7a294b89d22878118765c35228eda3332eb8a7404110b295bd"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/QQConnector.xcframework.zip",
            checksum: "f99dacc97252d87e1ea60d85d2a7acff5d95d6f4ca910a30f5c76bd462b57ebe"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/ShareSDK.xcframework.zip",
            checksum: "5b5bcea29231563d1616f458d35e6bf9fa2e674df0b5119e3e8052390b3f26c7"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/ShareSDKConfigFile.xcframework.zip",
            checksum: "36bcd2420b8621ad6edaa1fa393d36d0d985bac846ce623e4fa2e35680796438"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/ShareSDKConnector.xcframework.zip",
            checksum: "a573040570baa35dfea36e37e28e67dbddb4538b371e87f05e78c14bad19d2b0"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/ShareSDKExtension.xcframework.zip",
            checksum: "65a476501aab03d6e01844cbc018819fa717cebde13ce1976dd48d065f42f672"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/ShareSDKUI.xcframework.zip",
            checksum: "d48ed5e78553c6a4ee9cd9eb6c185ca70f3abd523becd88287c1c5dd92243dd2"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/SinaWeiboConnector.xcframework.zip",
            checksum: "b96690503dba54006f1f3a2042d5873ccd2b2147839202be83dce8e7c6e7f932"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/tapsdkcorecpp.xcframework.zip",
            checksum: "c31ab656c9ee1bb4ff3e024d7a6ca75167be2bb1e78bcd1d8e6ec353435f24ca"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "f96c43da7d0bf8cd15e41d3635de44ae7a735be2ee0d0535633011e1c07502a0"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/TapTapCoreSDK.xcframework.zip",
            checksum: "0c94710de8c50489980b918c0baeb4e5d6a253e349aa4125a16f5985e4410a71"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/TapTapGidSDK.xcframework.zip",
            checksum: "fa4da03ff46c3c571aa98ca6628f84a246dc397545c7aa9f204df5e05d315f6f"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/TapTapLoginSDK.xcframework.zip",
            checksum: "3b8eaba257c3ae364d3d970cc0b31be884edc4a726943b96121f6c294a45fadc"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/TapTapNetworkSDK.xcframework.zip",
            checksum: "7a3f86e4ad5172d621234b2247ea46bf29c75cb96707908509fc90caa6b43293"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "073039e35367136bed0267b32b0dc9a70650c77ea23c114396ed5ae71d551f29"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/TapTapShareSDK.xcframework.zip",
            checksum: "675cf714936ba70b4f82b29d95dab3ded28428b646f8d74194615a06d073ea71"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/TencentOpenAPI.xcframework.zip",
            checksum: "4f5b2e189fb976107c1810ce1c9ebacdefb745285c725096302e9b112a212e05"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/THEMISLite.xcframework.zip",
            checksum: "32bff99a6dfed11aa58414510b4b0ad37a67bc8ab30c3d954be4694fc36b2552"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/UnitySDKManager.xcframework.zip",
            checksum: "0db49835617427906f459f920c66b4f0caf57354ab60029e1e58db6be479c361"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/WechatConnector.xcframework.zip",
            checksum: "a501cf42aa6e82b4fc6aea5fed91b90657abdbc0d290a9532c2a085a0af93493"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/XHSConnector.xcframework.zip",
            checksum: "4d335dd2bb5828c6a5c508b204297f22131d7fd04d45b747c9f0429a98a245da"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "6ab9ed05b6041fb60f14e14026efbb171302135de178b7c558849a263b494e12"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/YTXMonitor.xcframework.zip",
            checksum: "7a5bf9fe426e58e98ee24ec3d5bc56a5dfb6ecab4a1dace147bb72b3a39a92a9"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1494117/YTXOperators.xcframework.zip",
            checksum: "2768feadfe58d06999a07ce703574640ae150350d5654bb79e6b2f5028261c49"
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
