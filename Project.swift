import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "TuistPackageResolved",
    options: .options(
        disableBundleAccessors: true,
        disableSynthesizedResourceAccessors: true
    ),
    packages: [
//        .package(url: "https://github.com/Swinject/Swinject", .upToNextMinor(from: "2.9.0")),
        .package(url: "https://github.com/Swinject/Swinject", .exact("2.8.0")),
        .package(url: "https://github.com/roberthein/TinyConstraints", .upToNextMajor(from: "4.0.2")),
        .package(url: "https://github.com/airbnb/lottie-ios", .upToNextMajor(from: "4.4.3")),
        .package(url: "https://github.com/microsoft/appcenter-sdk-apple", .upToNextMajor(from: "5.0.3")),
        .package(url: "https://github.com/mxcl/PromiseKit", .upToNextMajor(from: "8.1.1")),
        .package(url: "https://github.com/apple/swift-collections", .upToNextMajor(from: "1.0.1")),
        .package(url: "https://github.com/onevcat/Kingfisher", .upToNextMajor(from: "7.8.1")),
        .package(url: "https://github.com/muxinc/mux-stats-sdk-avplayer", .upToNextMajor(from: "3.6.2")),
        .package(url: "https://github.com/SFSafeSymbols/SFSafeSymbols", .upToNextMajor(from: "5.2.0")),
        .package(url: "https://github.com/devicekit/DeviceKit.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/ProxymanApp/atlantis", .upToNextMajor(from: "1.23.0"))
    ],
    targets: TargetFactory.shared.allTargets(),
    schemes: SchemeFactory.shared.allSchemes(),
    fileHeaderTemplate: .string("Copyright © 2024 iphilgood.")
)
