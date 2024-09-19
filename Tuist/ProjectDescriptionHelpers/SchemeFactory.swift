import ProjectDescription

public class SchemeFactory {
    public static let shared = SchemeFactory()

    private init() {}

    public func allSchemes() -> [Scheme] {
        let name = "TuistPackageResolved"
        return [
            makeScheme(name: name),
            makeTestScheme(name: "\(name)Tests")
        ]
    }

    private func makeScheme(name: String) -> Scheme {
        return .scheme(
            name: name,
            buildAction: .buildAction(
                targets: [.init(stringLiteral: name)]
            ),
            runAction: .runAction(
                executable: .init(stringLiteral: name),
                arguments: .arguments(
                    environmentVariables: [:],
                    launchArguments: [.launchArgument(name: "-UIFocusLoggingEnabled YES", isEnabled: false)]
                )
            ),
            archiveAction: .archiveAction(
                configuration: "Debug"
            )
        )
    }

    private func makeTestScheme(name: String) -> Scheme {
        return .scheme(
            name: name,
            buildAction: .buildAction(
                targets: [.init(stringLiteral: name)]
            ),
            testAction: .targets([.init(stringLiteral: name)])
        )
    }
}
