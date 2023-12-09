import UIKit

struct Images {
    static let onboardingViewController = OnboardingViewControllerImages.self
    static let paywallViewController = PaywallViewControllerImages.self
    static let historyViewController = HistoryViewControllerImages.self
    static let settingsViewController = SettingsViewControllerImages.self
    static let scanViewController = ScanViewControllerImages.self
}

struct OnboardingViewControllerImages {
    static let identifyPlant = UIImage(named: "identifyPlant")!
    static let turnOnReminder = UIImage(named: "turnOnReminder")!
    static let diagnoseDisease = UIImage(named: "diagnoseDisease")!
}

struct PaywallViewControllerImages {
    static let xmark = UIImage(named: "xmark")!
    static let reviewOnTheApp = UIImage(named: "reviewOnTheApp")!
    static let leaf = UIImage(named: "leaf")!
    static let checkmark = UIImage(named: "checkmark")!
    static let border = UIImage(named: "border")!
}

struct HistoryViewControllerImages {
    static let settings = UIImage(named: "settings")!
}

struct SettingsViewControllerImages {
    static let upgradePro = UIImage(named: "upgradePro")!
    static let notifications = UIImage(named: "notifications")!
    static let support = UIImage(named: "support")!
    static let privacyPolicy = UIImage(named: "privacyPolicy")!
    static let termOfUse = UIImage(named: "termOfUse")!
    static let backward = UIImage(named: "backward")!
    static let forward = UIImage(named: "forward")!
}

struct ScanViewControllerImages {
    static let scan = UIImage(named: "scan")!
}
