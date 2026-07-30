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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/ATAuthSDK.xcframework.zip",
            checksum: "2a2c3c12d947f7e4831e777d6b2f6ddca8aab6ec1da69b666e40e90aa9bc90e7"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/DouyinConnector.xcframework.zip",
            checksum: "764c5d8500b0da5991610fedb19fc59778367ba85eb8a2acf6c88f678dad8b42"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/DouyinOpenSDK.xcframework.zip",
            checksum: "f108b2fca4520965a118e8cc555d6852cb8147ded3e977a7700079eba27b4bf9"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/FlyVerifyCSDK.xcframework.zip",
            checksum: "98a7b2a2dfa1e09ae3efc974064bf06429394b38e4616c93eaad82e92f7d0961"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/FMDB.xcframework.zip",
            checksum: "1c8678e1646bc53d1629af8ec3c14dfa81212c520cdf90995a29d72df772dd19"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/GravityEngineSDK.xcframework.zip",
            checksum: "50115505d9d12a10893a8e17423110d604101af3e0a1c3b799f20a1fde902af9"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/KuaiShouConnector.xcframework.zip",
            checksum: "bd86c9c0437f2e37bb70e67dc9f309b7f5b45eb44f7bf9b73daccd80aece2fee"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/MOBFoundation.xcframework.zip",
            checksum: "889ae4fae7bd5bf629c4964f37fbfb2b805aec3525e7390c59ba697f3f70fe8b"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/OneSDKAccount.xcframework.zip",
            checksum: "158190e1e9d3e1b8a71fa741168222ffbd0ee8838778986b07a91998d818a4ca"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/OnesdkBaitianFramework.xcframework.zip",
            checksum: "c11beecd87a9e4c8b6078100f528ae4237ff9f1730631e5e101173e0b3799db9"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/OneSDKCommon.xcframework.zip",
            checksum: "c8e51a58833a756e6c3e35f49d3247f56eecff2df0632aa922371f2cbef3fe09"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/OneSDKGravityEngine.xcframework.zip",
            checksum: "a377f8821bf740949b28c50547a272ec3e2cd7a3eb7347e7111edd6c2349dd4c"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "559d0af2eb9027d87dd809efa3895ed6f1499a75a778f2d8c006aa2136d04916"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/OtherPartySDKFramework.xcframework.zip",
            checksum: "99d9fb1536c5099a82f1c924a2f64d6058111662b0ad458cebf7912f6ad49c97"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/QQConnector.xcframework.zip",
            checksum: "1143f975874f145b29d080965de15c3bbcabcee23a382920df190f8b5d22e630"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/ShareSDK.xcframework.zip",
            checksum: "35ee41d264c801e94c60bea5112fca8b79c357fc9e114685ad2d2cb4f35c3924"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/ShareSDKConfigFile.xcframework.zip",
            checksum: "dbbabb76b3f2a013e874f5b788d6f25e375db1ebd0f1cd7813069fccf634c1e0"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/ShareSDKConnector.xcframework.zip",
            checksum: "49090b66bdaa22b48e09017af4ec493a8ffae644c81c801d0abea0e334bb865e"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/ShareSDKExtension.xcframework.zip",
            checksum: "e2c261feddeb9d7b18d4bd85b452fd5d254e113581b9564adb844beb613deaec"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/ShareSDKUI.xcframework.zip",
            checksum: "a470dd8fa6919df2bcf4505baaa546b2c2edd5097904705984a06d0499408528"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/SinaWeiboConnector.xcframework.zip",
            checksum: "590534cc8daa10bbc1decc1b11b6e456bf3c27716d6785789479c91c5098607e"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/tapsdkcorecpp.xcframework.zip",
            checksum: "bac20053d89cea48b47b7d3cfc6d570152fe529efc0f5700e088e87260550c6d"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "a3d63302523d95fb978b25ffc57e8a67c7580d65aac357923c658c30b8feba48"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/TapTapCoreSDK.xcframework.zip",
            checksum: "57762fce8b9dc82f43550678dda3c32ec600223055adac479d9a28870536ee2b"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/TapTapGidSDK.xcframework.zip",
            checksum: "e1de9396712371f96273f5b3e2cab546a40cf54637a0fb88d37904606815c115"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/TapTapLoginSDK.xcframework.zip",
            checksum: "c33c0d2908240561d17ffcbba38101a2cb945306fbd764e0110cc2dccc6968d8"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/TapTapNetworkSDK.xcframework.zip",
            checksum: "21ea890c3796ba119c025b4e4e2ead6b5d357c3fac67f3bc998032863bb4d954"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "7e6b43302fc2330834911ec8b848661e0938293fcd15cbf89921ed29c413b89c"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/TapTapShareSDK.xcframework.zip",
            checksum: "a7fbdcee210340b19f41c78efd76a9a7eeff78c7698e79ddfc84ed33ddb32902"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/TencentOpenAPI.xcframework.zip",
            checksum: "b232e8ed6a32436cba77689a2a11f81d07a0cb7bde6581c3481b04107ee0fdc4"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/THEMISLite.xcframework.zip",
            checksum: "d28cb147c44b285de906bdafecd5b11c5779689b1c7e2ad10fc42a59d7658d21"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/UnitySDKManager.xcframework.zip",
            checksum: "4eaa5d6178e758a2b3471a33f5e97be0bb12381d8f02e5d2ce93fd11e768db5a"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/WechatConnector.xcframework.zip",
            checksum: "d93d4539e681607019aa4da8fef36bb449bf2a7b011043e12abe931de849c88c"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/XHSConnector.xcframework.zip",
            checksum: "b8e1dada69aff5147d82ab9825c85c483b9cab2b5a18c17590568d978d3dc2cb"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "90fd0e2b1f5e68edd5894b841ff66352d67736dc885ff3d49bbc7620c7a9ea65"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/YTXMonitor.xcframework.zip",
            checksum: "ba2fd54e805d326e661bae8b13118072a7f0d8321483e2e5facd511dcdf967d4"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1496752/YTXOperators.xcframework.zip",
            checksum: "84b399f99749c6ddf2d06d7f34164f70c9855466b6fe2e7bed5a0e90e549b4f1"
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
