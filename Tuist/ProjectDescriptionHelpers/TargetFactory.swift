import ProjectDescription

public class TargetFactory {
    public static let shared = TargetFactory()

    private init() {}

    public func allTargets() -> [Target] {
        return [
            .target(
                name: "TuistPackageResolved",
                destinations: .iOS,
                product: .app,
                bundleId: "io.tuist.TuistPackageResolved",
                infoPlist: .extendingDefault(
                    with: [
                        "UILaunchScreen": [
                            "UIColorName": "",
                            "UIImageName": "",
                        ],
                    ]
                ),
                sources: ["TuistPackageResolved/Sources/**"],
                resources: ["TuistPackageResolved/Resources/**"],
                dependencies: [
                    .package(product: "AppCenterAnalytics"),
                    .package(product: "AppCenterCrashes"),
                    .package(product: "Collections"),
                    .package(product: "Kingfisher"),
                    .package(product: "MUXSDKStats"),
                    .package(product: "PromiseKit"),
                    .package(product: "DeviceKit"),
                    .package(product: "SFSafeSymbols"),
                    .package(product: "Swinject"),
                    .package(product: "TinyConstraints")
                ]
            ),
            .target(
                name: "TuistPackageResolvedTests",
                destinations: .iOS,
                product: .unitTests,
                bundleId: "io.tuist.TuistPackageResolvedTests",
                infoPlist: .default,
                sources: ["TuistPackageResolved/Tests/**"],
                resources: [],
                dependencies: [.target(name: "TuistPackageResolved")]
            ),
        ]
    }
}
