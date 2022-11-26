import Foundation

extension Bundle {
    public var versionString: String? {
        self.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    }

    public var buildString: String? {
        self.object(forInfoDictionaryKey: "CFBundleVersion") as? String
    }

    public var applicationName: String? {
        self.infoDictionary?[kCFBundleNameKey as String] as? String
    }

    public var iconName: String? {
        guard let icons = infoDictionary?["CFBundleIcons"] as? [String: Any],
           let primaryIcon = icons["CFBundlePrimaryIcon"] as? [String: Any],
           let iconFiles = primaryIcon["CFBundleIconFiles"] as? [String],
           let lastIcon = iconFiles.last else {
            return nil
        }
        return lastIcon
    }
}
