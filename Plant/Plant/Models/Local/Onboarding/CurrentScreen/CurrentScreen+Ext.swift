import UIKit.UIImage

extension CurrentScreen {
    
    var appFunctionalityText: String {
        let strings = Strings.onboardingViewController
        
        switch self {
        case .first:
            return strings.identifyPlant
        case .second:
            return strings.turnOnReminder
        case .third:
            return strings.diagnoseDisease
        }
    }
    
    var appFunctionalityImage: UIImage {
        let images = Images.onboardingViewController 

        switch self {
        case .first:
            return images.identifyPlant
        case .second:
            return images.turnOnReminder
        case .third:
            return images.diagnoseDisease
        }
    }
    
    var appFunctionalityCapabilitiesText: String {
        let strings = Strings.onboardingViewController
        
        switch self {
        case .first:
            return strings.plantIdentificationCapabilities
        case .second:
            return strings.reminderEnabledCapabilities
        case .third:
            return strings.diseaseDiagnosisCapabilities
        }
    }
}
