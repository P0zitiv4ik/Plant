import UIKit

struct Objects {
    static let onboardingViewController = OnboardingViewControllerObjects.self
    static let paywallViewController = PaywallViewControllerObjects.self
    static let historyViewController = HistoryViewControllerObjects.self
    static let settingsViewController = SettingsViewControllerObjects.self
    static let scanViewController = ScanViewControllerObjects.self
}

struct OnboardingViewControllerObjects: GlobalObjects {
    static private let font = Fonts.satoshi
    
    static func fullAppInfoStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 26, leading: 0, bottom: 10, trailing: 0)
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        return stackView
    }
    
    static func appFunctionalityCapabilitiesStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.spacing = 12
        return stackView
    }
    
    static func appFunctionalityStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.spacing = 28
        return stackView
    }

    static func appFunctionalityLabel() -> UILabel {
        let label = UILabel()
        label.textColor = Colors.black
        label.font = font.satoshiBold(size: 35)
        label.textAlignment = .center
        return label
    }
    
    static func appFunctionalityImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }
    
    static func appFunctionalityCapabilitiesLabel() -> UILabel {
        let label = UILabel()
        label.textColor = Colors.color1
        label.font = font.satoshiMedium(size: 18)
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }
}

struct PaywallViewControllerObjects: GlobalObjects {
    static private let strings = Strings.paywallViewController
    static private let images = Images.paywallViewController
    static private let font = Fonts.satoshi
    
    static func fullInfoOnSubscriptionsStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 10, leading: 22, bottom: 10, trailing: 22)
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        stackView.spacing = 12
        return stackView
    }
    
    static func basicInfoOnSubscriptionsStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.spacing = 36
        stackView.alignment = .center
        return stackView
    }
    
    static func topPanelStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.distribution = .equalSpacing
        return stackView
    }
    
    static func activateAllFeaturesLabel() -> UILabel {
        let label = UILabel()
        label.text = strings.tryForFree
        label.font = font.satoshiBold(size: 30)
        return label
    }
    
    static func closePaywallVСButton(action: Selector) -> UIButton {
        let button = UIButton()
        button.setImage(images.xmark, for: .normal)
        button.addTarget(self, action: action, for: .touchUpInside)
        return button
    }
    
    static func reviewOnTheAppImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.image = images.reviewOnTheApp
        return imageView
    }
    
    static func appFeaturesStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.spacing = 12
        stackView.alignment = .leading
        return stackView
    }
    
    static func applyLinearGradientBorder(bounds: CGRect, cornerRadius: CGFloat) -> CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [UIColor.color11.cgColor, UIColor.color12.cgColor]
        gradientLayer.mask = mask(roundedRect: bounds, cornerRadius: cornerRadius)
        return gradientLayer
    }

    static private func mask(roundedRect: CGRect, cornerRadius: CGFloat) -> CAShapeLayer {
        let path = UIBezierPath(roundedRect: roundedRect, cornerRadius: cornerRadius)
        
        let borderLayer = CAShapeLayer()
        borderLayer.path = path.cgPath
        borderLayer.lineWidth = 4
        borderLayer.strokeColor = UIColor.black.cgColor
        borderLayer.fillColor = UIColor.clear.cgColor
        return borderLayer
    }

    static func subscriptionInfoLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = Colors.color2
        label.font = font.satoshiMedium(size: 14)
        return label
    }

    static func subscriptionTypeLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = .black
        label.font = font.satoshiBold(size: 16)
        return label
    }

    static func selectedSubscriptionImageView(image: UIImage) -> UIImageView {
        let imageView = UIImageView()
        return imageView
    }

    static func subscriptionInfoStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.spacing = 8
        return stackView
    }

    static func subscriptionTypeStackView(arrangedSubviews: [UIView], spacing: CGFloat) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.spacing = spacing
        return stackView
    }
    
    static func typesOfSelectedSubscriptionsStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.spacing = 12
        return stackView
    }

    static func selectedSubscriptionStackView(arrangedSubviews: [UIView], target: Any, action: Selector) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 24)
        stackView.distribution = .equalCentering
        stackView.alignment = .center
        stackView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0.24)
        stackView.layer.masksToBounds = true
        stackView.layer.cornerRadius = 16
        
        let tapWeekly = UITapGestureRecognizer(target: target, action: action)
        stackView.addGestureRecognizer(tapWeekly)
        return stackView
    }

    static func appFeatureLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = font.satoshiMedium(size: 16)
        return label
    }

    static func appFeatureImageView(image: UIImage) -> UIImageView {
        let imageView = UIImageView()
        imageView.image = image
        return imageView
    }

    static func appFeatureStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.spacing = 8
        stackView.alignment = .center
        return stackView
    }
}

struct HistoryViewControllerObjects {
    static let strings = Strings.historyViewController
    static let font = Fonts.satoshi
    static let images = Images.historyViewController
    
    static func topPanelStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20)
        stackView.distribution = .equalSpacing
        return stackView
    }
    
    static func historyLabel() -> UILabel {
        let label = UILabel()
        label.text = strings.history
        label.textColor = Colors.black
        label.font = font.satoshiBold(size: 32)
        return label
    }
    
    static func settingsButton(target: Any, action: Selector) -> UIButton {
        let button = UIButton()
        button.setImage(images.settings, for: .normal)
        button.addTarget(target, action: action, for: .touchUpInside)
        return button
    }
}

struct SettingsViewControllerObjects {
    static let strings = Strings.settingsViewController
    static let font = Fonts.satoshi
    static let images = Images.settingsViewController
    
    static func appSettingsInfoStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.spacing = 30
        return stackView
    }
    
    static func topPanelStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        return stackView
    }
    
    static func backButton(target: Any, action: Selector) -> UIButton {
        let button = UIButton()
        button.setImage(images.backward, for: .normal)
        button.addTarget(target, action: action, for: .touchUpInside)
        return button
    }
    
    static func settingsLabel() -> UILabel {
        let label = UILabel()
        label.text = strings.settings
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = font.satoshiBold(size: 25)
        return label
    }
    
    static func appSettingsStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.spacing = 16
        return stackView
    }
    
    static func upgradeProStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 10, leading: 26, bottom: 0, trailing: 43)
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.clipsToBounds = true
        stackView.layer.cornerRadius = 18
        return stackView
    }
    
    static func takeCarePlantsStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.spacing = 12
        return stackView
    }
    
    static func upgradeProLabel() -> UILabel {
        let label = UILabel()
        label.text = strings.upgradePRO
        label.textColor = Colors.color5
        label.font = font.satoshiBold(size: 18)
        return label
    }
    
    static func takeCarePlantsLabel() -> UILabel {
        let label = UILabel()
        label.text = strings.plantAdvice
        label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.53)
        label.font = font.satoshiMedium(size: 18)
        return label
    }
    
    static func upgradeProImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.image = images.upgradePro
        imageView.contentMode = .scaleAspectFill
        return imageView
    }
    
    static func seeAppInfoStackView(arrangedSubviews: [UIView], action: Selector) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 20, leading: 25, bottom: 20, trailing: 20)
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.13).cgColor
        stackView.layer.shadowOpacity = 1
        stackView.layer.shadowRadius = 8
        stackView.layer.shadowOffset = CGSize(width: 0, height: 7)
        stackView.layer.cornerRadius = 18
        stackView.backgroundColor = Colors.white
        
        let tap = UITapGestureRecognizer(target: self, action: action)
        stackView.addGestureRecognizer(tap)
        return stackView
    }
    
    static func appInfoStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.spacing = 20
        return stackView
    }
    
    static func appInfoImageView(image: UIImage) -> UIImageView {
        let imageView = UIImageView()
        imageView.image = image
        imageView.layer.shadowColor = CGColor(red: 13/255, green: 159/255, blue: 0, alpha: 0.4)
        imageView.layer.shadowOpacity = 1
        imageView.layer.shadowRadius = 8
        imageView.layer.shadowOffset = CGSize(width: 0, height: 7)
        return imageView
    }
    
    static func appInfoLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = font.satoshiBold(size: 18)
        return label
    }
    
    static func goToButton(image: UIImage) -> UIButton {
        let button = UIButton()
        button.setImage(image, for: .normal)
        return button
    }
}

struct ScanViewControllerObjects {
    static let strings = Strings.scanViewController
    static let font = Fonts.poppins
    static let images = Images.scanViewController
    
    static func scanStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.spacing = 30
        return stackView
    }
    
    static func identificationMessageLabel() -> UILabel {
        let label = UILabel()
        label.text = strings.identificationMessage
        label.font = font.poppinsSemiBold(size: 20)
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }
    
    static func scanImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.image = images.scan
        imageView.contentMode = .scaleAspectFit
        return imageView
    }
}
