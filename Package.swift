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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/ATAuthSDK.xcframework.zip",
            checksum: "a353efeb041b7648b43a7c9d037354c6abc348d69e4fe669a95930806d341d2f"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/Bugly.xcframework.zip",
            checksum: "a5407ed8623da6c38077f4b5120e9369841509fe91fc2d8fb2e9da96876f2c9d"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/DouyinConnector.xcframework.zip",
            checksum: "d4b9da710f6e5d261ae0ea17828c4971a6dc6fa03467dec011af343f22013f53"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/DouyinOpenSDK.xcframework.zip",
            checksum: "873f60e8bfea2823e48fb561caf5bf813edd399550611cdb307a05d9c78bb85d"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/FlyVerifyCSDK.xcframework.zip",
            checksum: "fdbbb70b62f6f1fe3e52f830cd2df17c482c57d78aaf696475702c3983d62c79"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/FMDB.xcframework.zip",
            checksum: "0a553f471c662fe12bac0209c9e8bb2cc1d27f2996bce3dfb378fd46fcd220a5"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/GravityEngineSDK.xcframework.zip",
            checksum: "f419a8ca8efdb638b90c84a8cda52ebb26abd9af89d67993a11162b8be7fe1e8"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/KuaiShouConnector.xcframework.zip",
            checksum: "34d810f6b1d49c9e9da64f114e9ab7d3fd891ddf78cb34c99f722554ea1f1109"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/MOBFoundation.xcframework.zip",
            checksum: "4eecd60ba1aa5b322adb9691066a217aa29fcbee76084df217efe6d515a9909f"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/OneSDKAccount.xcframework.zip",
            checksum: "06ae228b20073ca9136d3b118f1547e4019c4c8b8144f20a044bc3c884a957e0"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/OnesdkBaitianFramework.xcframework.zip",
            checksum: "329b3fd6901a3c35dc02457d056bd98a56d3aa4b45eee29a2993db825ec58bae"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/OneSDKCommon.xcframework.zip",
            checksum: "d00d8b8e41345548d1d5dbbef9904bf7cc921a31e98bffa67bdfc986b1576e1c"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/OneSDKGravityEngine.xcframework.zip",
            checksum: "56265f6449d6cf5381e4bfc00ff65d6af60d30533e76c17402da1b85c460fd81"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "c22cd674b5d9a409642758d6a148b6b9210bc39bd35e8e286a35e17f5ac27c65"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/OtherPartySDKFramework.xcframework.zip",
            checksum: "6e61a4145d845f23b59a435349f0967ac026ac508d836822e491a8cfec664c99"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/QQConnector.xcframework.zip",
            checksum: "7c8796e63d54cf6da33773dcd6907133740ef29aa44c4c2ff46d29e932ec8c00"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/ShareSDK.xcframework.zip",
            checksum: "f18d9b45a794cc38a4aa3754e7edd6c9d039e521200892ee4ee68309ff3e0453"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/ShareSDKConfigFile.xcframework.zip",
            checksum: "e63936bdc30ee7107636f1e7f325b7a0ca42542c5d068e68fc4c2d65d3aa519d"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/ShareSDKConnector.xcframework.zip",
            checksum: "c8ca0d0d45c47d188d555560b5d1b40c7aead10b897be1111d319286af2f0f24"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/ShareSDKExtension.xcframework.zip",
            checksum: "91126e74dff0534f65452b187830ce0378b2f21e51f27a360ee96306087cea6e"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/ShareSDKUI.xcframework.zip",
            checksum: "f90cd0529a41b66c6b21d15d88dd70b1bc6434fc40fe4cbff368310e0f6b05f9"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/SinaWeiboConnector.xcframework.zip",
            checksum: "53671ad2a96390e4b97ec42372ff5d353ede175bb8f823c3a962416bd35a9ff0"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/tapsdkcorecpp.xcframework.zip",
            checksum: "9b46de4e086ae3e1503c9f117c779000b68cc20b5f56574d1069a883ea9b6104"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "acc3ce1cad1d54d920e25f945ab41938300e94e22cb6459a426e8da4b7c8118c"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/TapTapCoreSDK.xcframework.zip",
            checksum: "6cbf24067b5b7f5c78d10f569bdc50f12594919da83a4e20db6c25b3ff28926c"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/TapTapGidSDK.xcframework.zip",
            checksum: "9276489f699557751f75757a1c48a5fd4e74251f1a619c6664df555d38c443a3"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/TapTapLoginSDK.xcframework.zip",
            checksum: "5f7a3f8b569bb97b99cc63562848614ba82f8a41a2f4cffcb2ee469f93a17ffc"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/TapTapNetworkSDK.xcframework.zip",
            checksum: "3327ad29fb5bb29abc253cd9c35067327c41477c8b517f2610585c222c872be5"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "d2e7d5afd13bd914f65d3b352ef950a5058a6face3cff7e257ed1092b8e962fd"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/TapTapShareSDK.xcframework.zip",
            checksum: "bcdd889bc8505abd863c7d395f9a63c2c018d61a36155d155db9ca5252e100f7"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/TencentOpenAPI.xcframework.zip",
            checksum: "de5e3cf2b670dbbb3bf4a683b392431ebfad273dc982ee1f86d36171d0f8d2ec"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/THEMISLite.xcframework.zip",
            checksum: "410d49466f006244c0a45823e432a04250b2b750ca4169b374d33b61f5d22156"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/UnitySDKManager.xcframework.zip",
            checksum: "d736db78d85ad602bf3b7d269e90f4c4907b6a5876ed1a4a76a89a075c4c6e10"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/WechatConnector.xcframework.zip",
            checksum: "8c1ed019f9aa78438527f6b09d3ea34a147db017559c04940350586675b34175"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/XHSConnector.xcframework.zip",
            checksum: "9fde0e0651628cbb5ff658b6ea257fc1bcb264a4b11c54ebc354e3938120ab96"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "54f8c46099fb0e9cfb192d8b04fdfc394e42624e434ea1b27613f0517b337f6b"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/YTXMonitor.xcframework.zip",
            checksum: "9393301f9992254fe204dcbe8185e2c749b823b72aa3149696b8ac18f66d95bd"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/2.0.3-dev-1411412/YTXOperators.xcframework.zip",
            checksum: "871803ea2ecfc2f498418b180eb355b2df6002bf63e0c1386575e4ab0a8fd92c"
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
