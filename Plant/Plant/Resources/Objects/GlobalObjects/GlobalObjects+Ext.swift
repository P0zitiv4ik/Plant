import UIKit

extension GlobalObjects {
    static private var font: SatoshiFonts.Type {
        return Fonts.satoshi
    }
    
    static func nextScreenStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 22, bottom: 0, trailing: 22)
        stackView.axis = .vertical
        stackView.spacing = 28
        return stackView
    }
    
    static func nextScreenButton(title: String, pointer: Any, action: Selector) -> UIButton{
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = font.satoshiBold(size: 18)
        button.contentEdgeInsets = UIEdgeInsets(top: 18, left: 0, bottom: 18, right: 0)
        button.layer.cornerRadius = 15
        button.addTarget(pointer, action: action, for: .touchUpInside)
        button.layer.shadowColor = Colors.color13.cgColor
        button.layer.shadowOpacity = 1
        button.layer.shadowRadius = 10
        button.layer.shadowOffset = CGSize(width: 0, height: 8)
        return button
    }
    
    static func appInfoStackView(arrangedSubviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 6, bottom: 0, trailing: 6)
        stackView.distribution = .equalSpacing
        return stackView
    }
    
    static func appInfoButton(title: String, pointer: Any, action: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Colors.color2, for: .normal)
        button.titleLabel?.font = font.satoshiMedium(size: 12)
        button.addTarget(pointer, action: action, for: .touchUpInside)
        return button
    }
}
