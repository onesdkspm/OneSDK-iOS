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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/ATAuthSDK.xcframework.zip",
            checksum: "0857123dff440b6780b11e81959692583398cc3410cc9347ecb055dffb92d092"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/Bugly.xcframework.zip",
            checksum: "dee83173071e62bf67c192ad8e60c01962f39af1bb0a50f9c62b1554c992efe6"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/DouyinConnector.xcframework.zip",
            checksum: "24604d51af5fb4a68ebe93c3845b55b3886303155eb501b6aacc961a09e7c48c"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/DouyinOpenSDK.xcframework.zip",
            checksum: "6ab3edfc2b78cbe02e499a4831cfc70efb4bbfc770766590629e7bf42c4e6b76"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/FlyVerifyCSDK.xcframework.zip",
            checksum: "76c8af3049469cf698b40ff840d7d1611f35c3e30533acd01e6361f52359030a"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/FMDB.xcframework.zip",
            checksum: "cf364998abecda0f8e34eaf1262334e88754347e6ca26368d439654887b9ba5b"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/GravityEngineSDK.xcframework.zip",
            checksum: "3d52a8e8e2ef84d1bee4cfaf0e37f57d0d87ff7360bff54bdd9b2dbf251bbada"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/KuaiShouConnector.xcframework.zip",
            checksum: "cf633b3305425e98b55a257e343bdf82332fd80c6b9967e5deb27e0693635e63"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/MOBFoundation.xcframework.zip",
            checksum: "34dc88440d5d3685d45761f16f39e4685b39e51b584c32d841e6215df52e3d0c"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/OneSDKAccount.xcframework.zip",
            checksum: "0c9ffa2d56602de308b413078bd0755012db53e29e65adc0212e5277229ddfe0"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/OnesdkBaitianFramework.xcframework.zip",
            checksum: "851b79e8f2afd68b221b9cedbcf5c80e3eb2972d0a8b6b0dcef7c299a9bde991"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/OneSDKCommon.xcframework.zip",
            checksum: "c70e880d185afee21caa8753c18420db7e9dc081fd3912e4f4351c560de989dd"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/OneSDKGravityEngine.xcframework.zip",
            checksum: "0fde8bacf565bb9523046ce4574438db54f493081e99194c542a8f89721a0c45"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "12d30217d7a6ebf067e7d5dd9b0e90f24b5066261259c0f5d6139dc593b3ca65"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/OtherPartySDKFramework.xcframework.zip",
            checksum: "fcce5e474f5f58031adec627581f724a3f12a8fb6088586f531deb5b69462aea"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/QQConnector.xcframework.zip",
            checksum: "7e962eb5828e1324f6f133e624510ee40a0b05aa0fea3e581cf26c30f6bea3a6"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/ShareSDK.xcframework.zip",
            checksum: "6e7c4d9a9982dc506a25bff017f167a445ac14a0bc07120f3833efe4ad3a6874"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/ShareSDKConfigFile.xcframework.zip",
            checksum: "5d9935cf798539298cfe6249f4f3a75a79fe766d48792941ca35c06079393afa"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/ShareSDKConnector.xcframework.zip",
            checksum: "fd2e320224d96538340ff2a606ac143295ae5fd1a7578755683bb95474a4997b"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/ShareSDKExtension.xcframework.zip",
            checksum: "0f681bd309772f44c1adc4837aa0be513cfc32b044bd8d6766c7f677bbd2c773"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/ShareSDKUI.xcframework.zip",
            checksum: "bd19a8b565734a7ded0e82d64f1ff5cca05a81e2a8d41ab3fbeafd7b7f796337"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/SinaWeiboConnector.xcframework.zip",
            checksum: "8c0d703849f272b087070ed28d755fbd675de7585efe1cd653bcd77e97f20b06"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/tapsdkcorecpp.xcframework.zip",
            checksum: "9fed8b38c7e709693c27bedacbc5c49a34f066acd7768d7c30a3d55703ec4a56"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "14442a0ca5b5750de3dd286dcfdeebb35b7b79b0531f28cfcf37f04ccff16f40"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/TapTapCoreSDK.xcframework.zip",
            checksum: "adf83d50799276b365fcb092770b24b62b2826fe7581dc4e6698e7bd0f41eec0"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/TapTapGidSDK.xcframework.zip",
            checksum: "45cce677c5b8e7692290a6fc4770115c2f150871a0ebd2e114af2afe2526b841"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/TapTapLoginSDK.xcframework.zip",
            checksum: "911c2e4bc43858bc78ac3aadd7080cec8ac84f2ee1b94d459ce532b5d4416940"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/TapTapNetworkSDK.xcframework.zip",
            checksum: "141289fa7429eaa05d8a17b4db825b31931a3a77d4a7066d549d90fc02818700"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "f4a4c355904dc713bcd1d0bd83849abee15e8455148d4e39bbb756a677c7113d"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/TapTapShareSDK.xcframework.zip",
            checksum: "89e06bc0df98af10dc81a4040a989119ed41e857ee95c27348f04b34beba9656"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/TencentOpenAPI.xcframework.zip",
            checksum: "75a7a5e69e95021d82a88161d847e985b2db771c88973ff51d32e511b5972122"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/THEMISLite.xcframework.zip",
            checksum: "ae5493999bae1bcdfd03d4b6c0bde49ad351a1f66ee0b6fe31f1ef78ff5f6e56"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/UnitySDKManager.xcframework.zip",
            checksum: "0ccaa365f7debdb77fd4acfcdad54b7553167876772df0caf6a6fbc191db4e40"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/WechatConnector.xcframework.zip",
            checksum: "c755fd69e1469a7f7ce411f4147d835ba8baa7315a40cb76c779f141e513bcb2"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/XHSConnector.xcframework.zip",
            checksum: "fb8a98df48669ed3104bf5ccfe049618d39c660622599e2ff570a27e6069ef92"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "32efbfd5d62ea3b8fa22d13ac2e4021e584be3dff5a241487733a60aed530bc9"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/YTXMonitor.xcframework.zip",
            checksum: "380a403adc481ddd2f8112351285a4e01302de8f5a00610c47862935dccb70ce"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.2-dev-1410807/YTXOperators.xcframework.zip",
            checksum: "3dcbde66e4a078798d7a6c0144497f3cfe591514ca3ca3fed4c70852e3d59d7e"
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
