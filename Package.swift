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
        
        // 皮肤产品（每个包含完整 SDK + 对应皮肤资源）
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
            path: "OneSDKWrapper",
            linkerSettings: [
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/ATAuthSDK.xcframework.zip",
            checksum: "b20849da575aa3ba641259e3478d6d569027b337132389737350d7ca9688440d"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/Bugly.xcframework.zip",
            checksum: "ecfa37cabfb48af26d385d876efef9251532a86d8696d547b30cb06146d9646a"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/DouyinConnector.xcframework.zip",
            checksum: "f6473f8625f2000dc84dd1694767b1731a5489f890916dcd6e2839505471afcc"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/DouyinOpenSDK.xcframework.zip",
            checksum: "562c80f7e1ca2b795e472b044a7c2f27b0e4d005c08a0ad81faa5cea9f9b8f4c"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/FlyVerifyCSDK.xcframework.zip",
            checksum: "b5f6993009e394654d883036e80463815d44064c8ac4fa144e5dae8b107348b7"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/FMDB.xcframework.zip",
            checksum: "cee6592e1aba139d55dce21fb41992e5bb65ca298fab10de11ed26ed7ce45d9d"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/GravityEngineSDK.xcframework.zip",
            checksum: "fc84238ef3778622e0eb0ee5684dfe2b99df12b5810df47f7d8e1919f6aa300a"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/KuaiShouConnector.xcframework.zip",
            checksum: "9e9d77e6b7ab4d9e1b8f467fa3a703460d608cd5dd904b9bf01af33682398886"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/MOBFoundation.xcframework.zip",
            checksum: "cb65c25335d56f9959ed473ec8d8d783200301147c5b0a2af1846e02bd0fa456"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/OneSDKAccount.xcframework.zip",
            checksum: "8ce52f8ae0366685dc7079157c2e0048ef54722b2dc7cbafe8f864023e4ce42b"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/OnesdkBaitianFramework.xcframework.zip",
            checksum: "8f05f3a32be905c60f94000ee935d54c8ac01e9baf97722a216719f16be3a5ba"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/OneSDKCommon.xcframework.zip",
            checksum: "65bdde5ba377f59d679f266a3cbea2b19290ed58f2a4b70f47f482edf0f9ea22"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/OneSDKGravityEngine.xcframework.zip",
            checksum: "b6f8fb3b2a8f0311aed29e6a5fdbb30b05654bd708ef2094b13a6ec825bbb3bf"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "68ea541566e526f7ccd191054c3c350a2fd928de5011008fa70ef673010f2d74"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/OtherPartySDKFramework.xcframework.zip",
            checksum: "d064bd97da8402c5b38f704b1432fb5d818d7b580020e149a5035dcc31086203"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/QQConnector.xcframework.zip",
            checksum: "1dda6638df1e97e520bb7b024ac548cabc3ab008b69a0702eeeb515edadb00cf"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/ShareSDK.xcframework.zip",
            checksum: "b58ca67a946b8ed7d460bf562e5b4cb256396baaf30de4236e4bf811fb23ef9d"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/ShareSDKConfigFile.xcframework.zip",
            checksum: "74752a1e7e2b8a0686f6dd8ec703bdddb9871ba321df0afa61604b5292d2e0ce"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/ShareSDKConnector.xcframework.zip",
            checksum: "3ac82908e885c12334a6e25b9aee7f0030f201bbd59bd6c9eafa85b61e1915aa"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/ShareSDKExtension.xcframework.zip",
            checksum: "4e0b89b625cf7f3af7a573b633f7a98cb73476591cf705b1b2afe0ffd1d9c5fe"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/ShareSDKUI.xcframework.zip",
            checksum: "46f9c5446c93bf3f4c8f01e3ad57b4f28e84491a43337534f67976e96d8d94a4"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/SinaWeiboConnector.xcframework.zip",
            checksum: "2e10511bc6bc996fd7111e02c4cd525be5a1dabad9d77d1eb2c048febc58b1fe"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/tapsdkcorecpp.xcframework.zip",
            checksum: "bfcb14cb22c1e81d535df0b828ca99c57fe117470efa7c0f109154745f844b77"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "c6e8b9b2040d0011b5076bbc011be1d685811d19d6efd785048054de71ce2b45"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/TapTapCoreSDK.xcframework.zip",
            checksum: "10807c5b7a046734aa8183302dbd11b8edbda51ecd4da81f638dfc64520f2ee8"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/TapTapGidSDK.xcframework.zip",
            checksum: "14906bbe43e01931bc4ef802d3b75195b97736547b32aa6bf3a6084394cf9178"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/TapTapLoginSDK.xcframework.zip",
            checksum: "c629c0975288946824c2e2ed6d354bdaf698d8dbcf3b0ddc16b4a7b8646090cd"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/TapTapNetworkSDK.xcframework.zip",
            checksum: "e9846b735d19b9077cd2098a190b7cac5bff19731f314033d63ed6ec18ad98a6"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "6540122366b769b4ff2dbf1bee7dc5e4e55cc22c28b9ba7ee30abd8b7ab384e2"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/TapTapShareSDK.xcframework.zip",
            checksum: "7a137dffda600b45033f52acef20000e86664d75932aa553c2e1f3aaca93de85"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/TencentOpenAPI.xcframework.zip",
            checksum: "2b6e8aafe3e7cc4605c31ab5869a221021dd68920996f037c1c9cfd7bac99562"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/THEMISLite.xcframework.zip",
            checksum: "bc19dff42c9b7dddbfb5311c0d47ae7311d4d192a9df3d70d41f58902bcc09c7"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/WechatConnector.xcframework.zip",
            checksum: "7ca8f5d90e005d81508f80277af769b044efa89c16545ffc3f489a77b4596319"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/XHSConnector.xcframework.zip",
            checksum: "a308f7008dd98000c8c163e23f80c324d03844a4a2afce0e9cf0e39263cbe458"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "8dd8213eb2adadde5510547ec8bcf6cad77a0c39abdc071b3742ffa39a4e2fd9"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/YTXMonitor.xcframework.zip",
            checksum: "af2eb9cd2d9a941435426ae7f80540b3ec7773c89f718ec8678a902f8a987762"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.7/YTXOperators.xcframework.zip",
            checksum: "722fc0aa6282955f5a8f4dcda0a4d2a1c39c186df0069d1b4122f0f6ac500d93"
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
