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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/ATAuthSDK.xcframework.zip",
            checksum: "60cac6a076752f8a662eb77fe838030909834e6b7767bee5d0212f5e240b4d5c"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/DouyinConnector.xcframework.zip",
            checksum: "a6c8cacc6dc1cec7879b44c3010c3fdc7fc16995b8e18d804979b36a52e29eb8"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/DouyinOpenSDK.xcframework.zip",
            checksum: "3a1a0c67002a7f0d113602205c739ec4e51195acfbfa09652c0eca668e2039f3"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/FlyVerifyCSDK.xcframework.zip",
            checksum: "3bcd937f8f185fa220d89a18cd20d87d695859c92cf247a631ce2802d2811da5"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/FMDB.xcframework.zip",
            checksum: "318e62f371d5a3db842326e99d50d2877dd0b3340c72a7499a22e73517855bae"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/GravityEngineSDK.xcframework.zip",
            checksum: "cae0251f8ef14ed34c22009e3b0585cdf509453c2c23806810f4b156a8bf6c56"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/KuaiShouConnector.xcframework.zip",
            checksum: "31e29c7f9ccfa6678e407ef72d6954c1ef1deb6ffcb153adca7bd734310c837a"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/MOBFoundation.xcframework.zip",
            checksum: "f60dcd2991e46bdd2de106c348eb86f140c7f009596500cab5efc251cae969b3"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/OneSDKAccount.xcframework.zip",
            checksum: "ce0c22b28bc8164d91876b34370971f7283f91411b08849066fd24d878b710a8"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/OnesdkBaitianFramework.xcframework.zip",
            checksum: "64f54db9c5040c425ca11711deed58b2c72652ff6f846c64dc59f36d4a5ddc36"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/OneSDKCommon.xcframework.zip",
            checksum: "efd9bac27ac4c5af615782e323dc6c8abf130a6f6dbd08e12c03d8556a64832c"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/OneSDKGravityEngine.xcframework.zip",
            checksum: "9d8226c3b726257c9010efc4d3c2ca11dd77a3a8927107e791047788397e072d"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "c283668cff7092cd014eae49f30b7ad655de25bf09c376a0806e7abdedc6d198"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/OtherPartySDKFramework.xcframework.zip",
            checksum: "d1c8506f5bcdc8dcf5adf051d1386dc63817e956c58201a1a6e86572f3c298d0"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/QQConnector.xcframework.zip",
            checksum: "872916890a4507ce3c5ae62fa129c3c335c08a9e29f2185d6587af4eadc7ea25"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/ShareSDK.xcframework.zip",
            checksum: "29d34f9ef88672d0282b76da0839f6f051f6be68388c9b19444c3e00063f4cc6"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/ShareSDKConfigFile.xcframework.zip",
            checksum: "9721262a627b1e84320859a7d807a9ce01b89ec7a26daf3e7c03bc5cab108126"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/ShareSDKConnector.xcframework.zip",
            checksum: "f1000700a901ffec7e1b1797c2b8894984341ef8d880f00d66e8badefc121ee2"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/ShareSDKExtension.xcframework.zip",
            checksum: "741d8fb446fadc9e83855c94794a7e6c7c7d31c9cc769ad6c161616362cf3c25"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/ShareSDKUI.xcframework.zip",
            checksum: "698d4e689d225cbce2c138f51e95c8f77804e083b93f191e6d0c0b7b32849f2d"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/SinaWeiboConnector.xcframework.zip",
            checksum: "05be3c652842d5fbd7a3ace6c4585495d52173e1825c7dd1aac6953bb4c2f34c"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/tapsdkcorecpp.xcframework.zip",
            checksum: "dab87e86dcbc36e63966c38818c0a8d71518bacdb6824b5219e857f3e1b34200"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "ecc79e2e518b9b02ae367640d82d0f5087f27fdedc8c5df354c36082e7e59bac"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/TapTapCoreSDK.xcframework.zip",
            checksum: "df138e3809427b5b9b8a9b87c1c171b332bbcf1c406efb5aaa203be97b4f5249"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/TapTapGidSDK.xcframework.zip",
            checksum: "9bef2e7cc0f937f81f7228a09910a9e60497b9242fdd29df94b51d3ca10e5cf6"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/TapTapLoginSDK.xcframework.zip",
            checksum: "1f31cd49b6b0806d5a29a7044f457252391d1165713500082be2f9edeabcace5"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/TapTapNetworkSDK.xcframework.zip",
            checksum: "45f327d7c6571f66718833f1b21f745fa923d8d2a3294f788ce7ddbbf62bf21b"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "c1f6ad046bd1d6d59257617a5318693bfbb1b752acfceb2d1a873a00ba146d80"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/TapTapShareSDK.xcframework.zip",
            checksum: "83e7329f4b2f4f31fa3cc8f5c6b58156c9e06c858eb6227f3e92e7331d4a8f62"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/TencentOpenAPI.xcframework.zip",
            checksum: "0d0910e67a86c06dfe9cfaf196f9f64b6ca0405556a676445a84a5a5949f186e"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/THEMISLite.xcframework.zip",
            checksum: "a603bf4163110ad3e61d360fe462b5374457912e346a972afb1ee4488e4b074a"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/UnitySDKManager.xcframework.zip",
            checksum: "6e0ea08d2b01e6f22b9a17c21222ec5394d5f692e11843e083f2972b26b9642f"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/WechatConnector.xcframework.zip",
            checksum: "5e78dfe81de270ba909cfccd29cbb34c056d2d32c8b37fb7e88454bb7c463c42"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/XHSConnector.xcframework.zip",
            checksum: "c35de63ac6dbccd9ceba1b39f2081c4c535bf74fc616d96a559ee14316d498f1"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "a73f3b2d23f239328a84583ab3ac95d374637b3e1a0c4326fc7a2f2d5fab5324"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/YTXMonitor.xcframework.zip",
            checksum: "a02d452cbd3563458f50c9410f6d317f5ecc7a131be1af03da5df4a71ef9b6f2"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1480501/YTXOperators.xcframework.zip",
            checksum: "5f381cefeb014b64a29466729fd8b0d0bc5c6a559fe99735936282aa0985a77c"
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
