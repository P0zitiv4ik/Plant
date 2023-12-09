import UIKit
import RxCocoa

var weekly: SubscriptionStatus = .active
var yearly: SubscriptionStatus = .inActive

class PaywallViewModel {
    let weeklyIsHidden = BehaviorRelay<Bool>(value: weekly.isHidden)
    let weeklyBorderWidth = BehaviorRelay<CGFloat>(value: weekly.borderWidth)
    let weeklyImage = BehaviorRelay<UIImage>(value: weekly.image)
    let yearlyIsHidden = BehaviorRelay<Bool>(value: yearly.isHidden)
    let yearlyBorderWidth = BehaviorRelay<CGFloat>(value: yearly.borderWidth)
    let yearlyImage = BehaviorRelay<UIImage>(value: yearly.image)
    
    @objc
    func weeklyAction() {
        weekly = .active
        yearly = .inActive
        
        updateSelectedSubscription()
    }
    
    @objc
    func yearlyAction() {
        yearly = .active
        weekly = .inActive
        
        updateSelectedSubscription()
    }
    
    func updateSelectedSubscription() {
        weeklyIsHidden.accept(weekly.isHidden)
        weeklyBorderWidth.accept(weekly.borderWidth)
        weeklyImage.accept(weekly.image)
        
        yearlyIsHidden.accept(yearly.isHidden)
        yearlyBorderWidth.accept(yearly.borderWidth)
        yearlyImage.accept(yearly.image)
    }
}
