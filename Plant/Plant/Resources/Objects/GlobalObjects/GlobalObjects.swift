import UIKit

protocol GlobalObjects {
    static func nextScreenStackView(arrangedSubviews: [UIView]) -> UIStackView
    static func nextScreenButton(title: String, pointer: Any, action: Selector) -> UIButton
    static func appInfoStackView(arrangedSubviews: [UIView]) -> UIStackView
    static func appInfoButton(title: String, pointer: Any, action: Selector) -> UIButton
}
