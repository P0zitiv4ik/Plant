import UIKit

struct Strings {
    static let onboardingViewController = OnboardingViewControllerStrings.self
    static let paywallViewController = PaywallViewControllerStrings.self
    static let historyViewController = HistoryViewControllerStrings.self
    static let settingsViewController = SettingsViewControllerStrings.self
    static let scanViewController = ScanViewControllerStrings.self
    static let infoPlantViewController = InfoPlantViewControllerStrings.self
    static let plantNotFoundViewController = PlantNotFoundViewControllerStrings.self
    static let myGardenViewController = MyGardenViewControllerStrings.self
    static let plantViewController = PlantViewControllerStrings.self
    static let plantCareViewController = PlantCareViewControllerStrings.self
}
    
struct OnboardingViewControllerStrings: GlobalStrings {
    static let identifyPlant = NSLocalizedString("onboarding.identify_plant", comment: "")
    static let turnOnReminder = NSLocalizedString("onboarding.turn_on_a_reminder", comment: "")
    static let diagnoseDisease = NSLocalizedString("onboarding.diagnose_disease", comment: "")
    static let plantIdentificationCapabilities = NSLocalizedString("onboarding.plant_identification_capabilities", comment: "")
    static let reminderEnabledCapabilities = NSLocalizedString("onboarding.reminder_enabled_capabilities", comment: "")
    static let diseaseDiagnosisCapabilities = NSLocalizedString("onboarding.disease_diagnosis_capabilities", comment: "")
    static let getStarted = NSLocalizedString("onboarding.get_started", comment: "")
}

struct PaywallViewControllerStrings: GlobalStrings {
    static let tryForFree = NSLocalizedString("paywall.try_for_free", comment: "")
    static let firstAdvantageOfTheApp = NSLocalizedString("paywall.first_advantage_of_the_app", comment: "")
    static let secondAdvantageOfTheApp = NSLocalizedString("paywall.second_advantage_of_the_app", comment: "")
    static let thirdAdvantageOfTheApp = NSLocalizedString("paywall.third_advantage_of_the_app", comment: "")
    static let billedAnnually = NSLocalizedString("paywall.billed_annually", comment: "")
    static let billedWeekly = NSLocalizedString("paywall.billed_weekly", comment: "")
    static let yearly = NSLocalizedString("paywall.yearly", comment: "")
    static let weekly = NSLocalizedString("paywall.weekly", comment: "")
    static let `continue` = NSLocalizedString("paywall.continue", comment: "")
 
    static func annualSubscriptionPrice(_ value: Float) -> String {
        return formattedString(key: "paywall.annual_subscription_price", value: value)
    }
    
    static func weeklySubscriptionPrice(_ value: Float) -> String {
        return formattedString(key: "paywall.weekly_subscription_price", value: value)
    }
    
    private static func formattedString(key: String, value: Float) -> String {
        let subscriptionPrice = NSLocalizedString(key, comment: "")
        let formattedValue = String(format: "%.2f", value)
        return String(format: subscriptionPrice, formattedValue)
    }
}

struct HistoryViewControllerStrings: GlobalStrings {

}

struct SettingsViewControllerStrings: GlobalStrings {
    static let settings = NSLocalizedString("settings.settings", comment: "")
    static let upgradePRO = NSLocalizedString("settings.upgrade_PRO", comment: "")
    static let plantAdvice = NSLocalizedString("settings.plant_advice", comment: "")
    static let notifications = NSLocalizedString("settings.notifications", comment: "")
    static let support = NSLocalizedString("settings.support", comment: "")
}

struct ScanViewControllerStrings {
    static let identificationMessage = NSLocalizedString("scan.identification_message", comment: "")
}

struct InfoPlantViewControllerStrings {
    static let addPlant = NSLocalizedString("info_plant.add_plant", comment: "")
}

struct PlantNotFoundViewControllerStrings {
    static let plantNotFound = NSLocalizedString("plant_not_found.plant_not_found", comment: "")
    static let retryMessage = NSLocalizedString("plant_not_found.retry_message", comment: "")
    static let tryAgain = NSLocalizedString("plant_not_found.try_again", comment: "")
}

struct MyGardenViewControllerStrings: GlobalStrings {
    static let red = "Red"
    static let green = "Green"
    static let watering = "watering"
    static let repot = "repot"
    static let cut = "cut"
    static let rsprayinged = "spraying"
    static let refertilizerd = "fertilizer"
    static let needsToBeWatered = NSLocalizedString("my_garden.needs_to_be_watered", comment: "")
    static let needsToBeReplanted = NSLocalizedString("my_garden.needs_to_be_replanted", comment: "")
    static let needsToBeCuted = NSLocalizedString("my_garden.needs_to_be_cuted", comment: "")
    static let needsToBeSprayed = NSLocalizedString("my_garden.needs_to_be_sprayed", comment: "")
    static let needsToBeFertilized = NSLocalizedString("my_garden.needs_to_be_fertilized", comment: "")
}

struct PlantViewControllerStrings: GlobalStrings {
    static let notificationsMessage = NSLocalizedString("plant.notifications_message", comment: "")
}

struct PlantCareViewControllerStrings: GlobalStrings {
    static let notificationsMessage = NSLocalizedString("plant_care.notifications_message", comment: "")
    static let days = NSLocalizedString("plant_care.days", comment: "")
    static let weeks = NSLocalizedString("plant_care.weeks", comment: "")
    static let months = NSLocalizedString("plant_care.months", comment: "")
    static let years = NSLocalizedString("plant_care.years", comment: "")
    static let addTime = NSLocalizedString("plant_care.add_time", comment: "")
    static let done = NSLocalizedString("plant_care.done", comment: "")
}
