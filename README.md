# OneSDK

OneSDK iOS Swift Package Manager 版本

## 简介

OneSDK 是一个集成了多个第三方 SDK 的统一框架，支持账号系统、分享、登录、数据分析等功能。

## 系统要求

- iOS 13.0+
- Xcode 14.0+
- Swift 5.7+

## 安装

### Swift Package Manager

在 Xcode 中：
1. File → Add Package Dependencies
2. 输入仓库 URL：`https://github.com/你的用户名/baitiansdk.git`
3. 选择版本：`1.0.0` 或 `Up to Next Major`

或在 `Package.swift` 中添加：

```swift
dependencies: [
    .package(url: "https://github.com/你的用户名/baitiansdk.git", from: "1.0.0")
]
```

## 使用

### 基础集成（核心SDK）

```swift
// 在 Package.swift 中
.product(name: "OneSDKCore", package: "baitiansdk")
```

包含所有核心功能和第三方 SDK。

### 皮肤切换

OneSDK 支持多种 UI 皮肤，使用不同的 product 即可切换：

```swift
// 天梯皮肤
.product(name: "OneSDKTianti", package: "baitiansdk")

// Happymaker 皮肤
.product(name: "OneSDKHappymaker", package: "baitiansdk")

// 趣堂皮肤
.product(name: "OneSDKQutang", package: "baitiansdk")

// Pjm 皮肤
.product(name: "OneSDKPjm", package: "baitiansdk")

// Hiddentianti 皮肤
.product(name: "OneSDKHiddentianti", package: "baitiansdk")
```

**注意**：皮肤 product 已包含 `OneSDKCore`，无需重复添加。

## 架构

- **37个 XCFramework**（托管在 Nexus）
  - 6个自有框架（OnesdkBaitianFramework, OneSDKCommon 等）
  - 31个第三方框架（ShareSDK, TapTap, 微信/QQ/微博等）
  
- **14个 Bundle 资源**
  - 9个通用 Bundles（ShareSDKUI.bundle 等）
  - 5个皮肤 Bundles（主题资源）

- **系统依赖**
  - 23个 iOS 系统框架（UIKit, Foundation, SystemConfiguration 等）
  - 5个系统库（sqlite3, c++, icucore, resolv, z）
  - 2个弱引用框架（Network, AdServices）

## 开发

### 构建 XCFrameworks

```bash
# 1. 构建所有 XCFramework
./spm-builder.sh

# 2. 上传到 Nexus
export VER_NAME="1.0.0"
./upload-to-nexus.sh

# 3. 生成 Package.swift
./generate-package-swift-with-system-libs.sh
```

### 版本发布

```bash
# 1. 更新版本号
export VER_NAME="1.0.1"

# 2. 重新构建和上传
./spm-builder.sh
./upload-to-nexus.sh
./generate-package-swift-with-system-libs.sh

# 3. Git 提交
git add Package.swift
git commit -m "Release v1.0.1"
git tag 1.0.1
git push origin main --tags
```

## 技术细节

### Package.swift 结构

```swift
products: [
    .library(name: "OneSDKCore", targets: ["OneSDKWrapper", "CommonResources"])
]

targets: [
    // Wrapper：聚合所有依赖 + 系统库
    .target(name: "OneSDKWrapper", dependencies: [所有37个框架])
    
    // 37个 binaryTarget（托管在 Nexus）
    .binaryTarget(name: "ATAuthSDK", url: "...", checksum: "...")
    
    // 资源 target
    .target(name: "CommonResources", resources: [.copy("Resources")])
]
```

### 资源访问

在代码中访问 Bundle 资源：

```swift
import Foundation

// SPM 自动提供 Bundle.module
let bundle = Bundle.module
if let path = bundle.path(forResource: "ShareSDKUI", ofType: "bundle") {
    let shareSDKBundle = Bundle(path: path)
}
```

## License

Copyright © 2026

## 支持

如有问题请提交 Issue。
