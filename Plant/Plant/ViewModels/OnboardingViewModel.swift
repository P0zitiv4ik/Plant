import UIKit
import RxCocoa

var currentScreen: CurrentScreen = .first

class OnboardingViewModel {
    let appFunctionalityText = BehaviorRelay<String>(value: currentScreen.appFunctionalityText)
    let appFunctionalityImage = BehaviorRelay<UIImage>(value: currentScreen.appFunctionalityImage)
    let appFunctionalityCapabilitiesText = BehaviorRelay<String>(value: currentScreen.appFunctionalityCapabilitiesText)
    let goToEntryVC = PublishRelay<Void>()
    
    @objc
    func getStartedAction() {
        (currentScreen == .third) ? goToEntryVC.accept(()) : updateCurrentScreen()
    }
    
    func updateCurrentScreen() {
        currentScreen = (currentScreen == .first) ? .second : .third
        
        appFunctionalityText.accept(currentScreen.appFunctionalityText)
        appFunctionalityImage.accept(currentScreen.appFunctionalityImage)
        appFunctionalityCapabilitiesText.accept(currentScreen.appFunctionalityCapabilitiesText)
    }
}
