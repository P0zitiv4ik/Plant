import UIKit
import SnapKit
import RxSwift

class SettingsViewController: UIViewController {
    
    lazy var appSettingsInfoStackView: UIStackView = objects.appSettingsInfoStackView(
        arrangedSubviews: [topPanelStackView, appSettingsStackView]
    )
    
    lazy var topPanelStackView: UIStackView = objects.topPanelStackView(
        arrangedSubviews: [backButton, settingsLabel, spacerView]
    )
    
    lazy var backButton: UIButton = objects.backButton(
        target: SettingsViewController(),
        action: #selector(backAction)
    )
    
    lazy var settingsLabel: UILabel = objects.settingsLabel()
    
    lazy var spacerView: UIView = UIView()
    
    lazy var appSettingsStackView: UIStackView = objects.appSettingsStackView(
        arrangedSubviews: [upgradeProStackView, goToNotificationsStackView, goToSupportStackView, goToPrivacyPolicyStackView, goToTermOfUseStackView]
    )
    
    lazy var upgradeProStackView: UIStackView = objects.upgradeProStackView(
        arrangedSubviews: [takeCarePlantsStackView, upgradeProImageView]
    )
    
    lazy var takeCarePlantsStackView: UIStackView = objects.takeCarePlantsStackView(
        arrangedSubviews: [upgradeProLabel, takeCarePlantsLabel]
    )
    
    lazy var upgradeProLabel: UILabel = objects.upgradeProLabel()
    
    lazy var takeCarePlantsLabel: UILabel = objects.takeCarePlantsLabel()
    
    lazy var upgradeProImageView: UIImageView = objects.upgradeProImageView()
    
    lazy var goToNotificationsStackView: UIStackView = objects.seeAppInfoStackView(
        arrangedSubviews: [notificationsStackView, goToNotificationsButton],
        action: #selector(notificationsAction)
    )
    
    lazy var notificationsStackView: UIStackView = objects.appInfoStackView(
        arrangedSubviews: [notificationsImageView, notificationsLabel]
    )
    
    lazy var notificationsImageView: UIImageView = objects.appInfoImageView(
        image: images.notifications
    )
    
    lazy var notificationsLabel: UILabel = objects.appInfoLabel(
        text: strings.notifications
    )
    
    lazy var goToNotificationsButton: UIButton = objects.goToButton(
        image: images.forward
    )
    
    lazy var goToSupportStackView: UIStackView = objects.seeAppInfoStackView(
        arrangedSubviews: [supportStackView, goToSupportButton],
        action: #selector(supportAction)
    )
    
    lazy var supportStackView: UIStackView = objects.appInfoStackView(
        arrangedSubviews: [supportImageView, supportLabel]
    )
    
    lazy var supportImageView: UIImageView = objects.appInfoImageView(
        image: images.support
    )
    
    lazy var supportLabel: UILabel = objects.appInfoLabel(
        text: strings.support
    )
    
    lazy var goToSupportButton: UIButton = objects.goToButton(
        image: images.forward
    )
    
    lazy var goToPrivacyPolicyStackView: UIStackView = objects.seeAppInfoStackView(
        arrangedSubviews: [privacyPolicyStackView, goToPrivacyPolicyButton],
        action: #selector(privacyPolicyAction)
    )
    
    lazy var privacyPolicyStackView: UIStackView = objects.appInfoStackView(
        arrangedSubviews: [privacyPolicyImageView, privacyPolicyLabel]
    )
    
    lazy var privacyPolicyImageView: UIImageView = objects.appInfoImageView(
        image: images.privacyPolicy
    )
    
    lazy var privacyPolicyLabel: UILabel = objects.appInfoLabel(
        text: strings.privacyPolicy
    )
    
    lazy var goToPrivacyPolicyButton: UIButton = objects.goToButton(
        image: images.forward
    )
    
    lazy var goToTermOfUseStackView: UIStackView = objects.seeAppInfoStackView(
        arrangedSubviews: [termOfUseStackView, goToTermOfUseButton],
        action: #selector(termOfUseAction)
    )
    
    lazy var termOfUseStackView: UIStackView = objects.appInfoStackView(
        arrangedSubviews: [termOfUseImageView, termOfUseLabel]
    )
    
    lazy var termOfUseImageView: UIImageView = objects.appInfoImageView(
        image: images.termOfUse
    )
    
    lazy var termOfUseLabel: UILabel = objects.appInfoLabel(
        text: strings.termsOfUse
    )
    
    lazy var goToTermOfUseButton: UIButton = objects.goToButton(
        image: images.forward
    )
    
    let strings = Strings.settingsViewController
    let images = Images.settingsViewController
    let objects = Objects.settingsViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Colors.main
        
        addSubviews()
        makeConstraints()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        upgradeProStackView.layer.insertSublayer(applyGradient(), at: 0)
    }
    
    func addSubviews() {
        view.addSubview(appSettingsInfoStackView)
    }
    
    func makeConstraints() {
        appSettingsInfoStackView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(72)
            make.leading.equalToSuperview().offset(22)
            make.trailing.equalToSuperview().offset(-22)
        }
        
        upgradeProImageView.snp.makeConstraints { make in
            make.width.equalTo(115)
            make.height.equalTo(100)
        }
        
        spacerView.snp.makeConstraints { make in
            make.width.equalTo(8)
            make.height.equalTo(14)
        }
        
    }
    
    func applyGradient() -> CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = upgradeProStackView.bounds
        gradientLayer.colors = [UIColor.color11.cgColor, UIColor.color12.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        return gradientLayer
    }
    
    @objc
    func backAction() {
        dismiss(animated: false)
    }
    
    @objc
    func termOfUseAction() {
        
    }
    
    @objc
    func notificationsAction() {
        
    }
    
    @objc
    func supportAction() {
        
    }
    
    @objc
    func privacyPolicyAction() {
        
    }
}
