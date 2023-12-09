import UIKit.UIImage

extension SubscriptionStatus {
    
    var isHidden: Bool {
        switch self {
        case .active:
            return false
        case .inActive:
            return true
        }
    }
    
    var borderWidth: CGFloat {
        switch self {
        case .active:
            return 0
        case .inActive:
            return 1
        }
    }
    
    var image: UIImage {
        let images = Images.paywallViewController
        
        switch self {
        case .active:
            return images.checkmark
        case .inActive:
            return images.border
        }
    }
}
