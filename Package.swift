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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/ATAuthSDK.xcframework.zip",
            checksum: "cca35e2d9f69edfd6ad497ebab2a86d94e91d63d0ed0ab35df0edd8b1f8b0d66"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/Bugly.xcframework.zip",
            checksum: "081e46997c00b6d0b004b7230152c583307317545d272291bcc4e9c66d22fd53"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/DouyinConnector.xcframework.zip",
            checksum: "9f8761633d90b7cc1f458dbf456e2323e3c79a374d20963d0239f971e7b2fe1a"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/DouyinOpenSDK.xcframework.zip",
            checksum: "a71053f8d58fe8a8f2f6a6406446be42e7f56043277eaeee43a571510a3014c5"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/FlyVerifyCSDK.xcframework.zip",
            checksum: "a71ba1ccb2b9fc872bbd52565180e93d1267b0058b798f9d71aead04ec4470c1"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/FMDB.xcframework.zip",
            checksum: "ea31729b1ea0d7a273aed59fa21ef912f79855222d2838e03ce33b68a98805ba"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/GravityEngineSDK.xcframework.zip",
            checksum: "73c58860db64ece2f6c755b909ac82c76b9c9889a2cd06551a05b70f6ddbc2c2"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/KuaiShouConnector.xcframework.zip",
            checksum: "49b51680fa60dce562d204db34bb02c2ad3037fdf7aea294552e8d38ccf3fd03"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/MOBFoundation.xcframework.zip",
            checksum: "bfe0ece42c54158c46063215a4f76b425af689e1966457f952925dcf2f6380cc"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/OneSDKAccount.xcframework.zip",
            checksum: "3c873dba10ba4901998afe84b8ca9c587ab113697c3ee2fcd8c0a781cdba0192"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/OnesdkBaitianFramework.xcframework.zip",
            checksum: "58136cb3c79a09de8dd36fc2d36a728b0d867e6acb09888757645f74a0f5745d"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/OneSDKCommon.xcframework.zip",
            checksum: "e49dce3265f804754f3d334184aaa948851d71428bd5964abe1d466a4be0ad52"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/OneSDKGravityEngine.xcframework.zip",
            checksum: "9ef668e30746b2b9b66db82953cf6cf03a71fba08626707f025ce7e51c772ca1"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "4ecf55331061b6cf41ea6cfefc9f535f8a684be42db5c58b8dcee093bf558ece"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/OtherPartySDKFramework.xcframework.zip",
            checksum: "e2aa2a53cb099a93986867ea92922a3a72225c5757c994e3da720f11bdc0a842"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/QQConnector.xcframework.zip",
            checksum: "0b00ea97162de941cef5c8e08d9cb003cefc45c81abb2a0ad0b43cb51d26e59a"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/ShareSDK.xcframework.zip",
            checksum: "6e44be78c92d6105c9f05a41d1a4a02f399c495ae176b44fd8cca2a32e2318d3"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/ShareSDKConfigFile.xcframework.zip",
            checksum: "e00d15b61e6d35767b2870dfbdb9bfbf912f5fee97c1c8a0f3ce8c62b7af78f3"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/ShareSDKConnector.xcframework.zip",
            checksum: "f3de5f9a432413b214fd17e5ba52f1e6d6ee6f1a48ef98e8b49dc9cbeccc4b94"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/ShareSDKExtension.xcframework.zip",
            checksum: "811261514a0aad6e3cfa98fed32c9d2930c401f7672d8b433c27c563191f787e"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/ShareSDKUI.xcframework.zip",
            checksum: "3f4319b744fba74dfb07b2bf81cf008a70068aba118235d4991ccec2c576bbe1"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/SinaWeiboConnector.xcframework.zip",
            checksum: "8d5f755e5bd309e4055302236168152eb0716cf9f72aa0b9bd04be0ba9f2fadf"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/tapsdkcorecpp.xcframework.zip",
            checksum: "24b83180887b21fe2533c9b6e41fc20fd0cb90b5c29e840e22e9bdaed104d916"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "ffb0b14cfa4f8fe9011d1f538cc44bd6da9f12ade0c0fe5674bbbac32f8020ff"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/TapTapCoreSDK.xcframework.zip",
            checksum: "e69818d485fe72e7d181587307d62b88af8e126006abe6e8a4d5d2a97d56e62f"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/TapTapGidSDK.xcframework.zip",
            checksum: "95697a2af51f3e6c1d5395106a3e8436002d39aafcc9b1af7772b233b041b290"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/TapTapLoginSDK.xcframework.zip",
            checksum: "cce0aa59864340b589fe5e5cddf8084ef20e425a35ef6df3f496db21638586b8"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/TapTapNetworkSDK.xcframework.zip",
            checksum: "bd36ff6ccf53b11fc7674b280a8e740433ad222783faeb2ef9a223c395bee4da"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "2f5c82af92b986e742798921c4a9a9ba95a297f88bd216f6eb0a7c595d93936a"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/TapTapShareSDK.xcframework.zip",
            checksum: "2ced6ad8a42c431bd1ae197c0582dd6a7836d25f1b692d1a5668246a8af1174d"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/TencentOpenAPI.xcframework.zip",
            checksum: "62bbe4995786c725ec4000a3031670a3bc7fc3182b5d579b6439ef72426d2635"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/THEMISLite.xcframework.zip",
            checksum: "1ca0ce2c2e70fa8e93e78957d167bda0050bbefc23de35c969330d4252bff24a"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/UnitySDKManager.xcframework.zip",
            checksum: "1b73bf9e63d9319808eb003ba17aa12701770596dfffbf67df0614d0811fd1fb"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/WechatConnector.xcframework.zip",
            checksum: "7aa89bdc53548d9ad4c8adaabcbf38b9184730109293ad7a27ec6cf9989082b6"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/XHSConnector.xcframework.zip",
            checksum: "8ed8766240c687c5a41fc3fc153e370a0e2038f2b8a00fa0c0f8537df190cd1a"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "6c49e985b821608031e9df5d1a2eee23b92bde622d6e4f286e052cadd8f3e876"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/YTXMonitor.xcframework.zip",
            checksum: "b493d181cb57f95d44937ce737778fbbc33a55db2b2fb5897009550707a4a5a9"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.0/YTXOperators.xcframework.zip",
            checksum: "4cdb6c9a06e7cfdcda070651e07728163235fd9d87cb6d905e0afb50f3f6dce5"
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
