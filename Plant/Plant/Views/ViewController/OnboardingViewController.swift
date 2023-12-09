import UIKit
import RxSwift

class OnboardingViewController: UIViewController {
    
    lazy var fullAppInfoStackView: UIStackView = objects.fullAppInfoStackView(
        arrangedSubviews: [appFunctionalityCapabilitiesStackView, getStartedStackView]
    )
    
    lazy var appFunctionalityCapabilitiesStackView: UIStackView = objects.appFunctionalityCapabilitiesStackView(
        arrangedSubviews: [appFunctionalityStackView, appFunctionalityCapabilitiesLabel]
    )
    
    lazy var appFunctionalityStackView: UIStackView = objects.appFunctionalityStackView(
        arrangedSubviews: [appFunctionalityLabel, appFunctionalityImageView]
    )

    lazy var appFunctionalityLabel: UILabel = objects.appFunctionalityLabel()
    
    lazy var appFunctionalityImageView: UIImageView = objects.appFunctionalityImageView()
    
    lazy var appFunctionalityCapabilitiesLabel: UILabel = objects.appFunctionalityCapabilitiesLabel()
    
    lazy var getStartedStackView: UIStackView = objects.nextScreenStackView(
        arrangedSubviews: [getStartedButton, appInfoStackView]
    )
    
    lazy var getStartedButton: UIButton = objects.nextScreenButton(
        title: strings.getStarted,
        pointer: onboardingViewModel,
        action: #selector(onboardingViewModel.getStartedAction)
    )
    
    lazy var appInfoStackView: UIStackView = objects.appInfoStackView(
        arrangedSubviews: [restorePurchasesButton, termsOfUseButton, privacyPolicyButton]
    )
    
    lazy var restorePurchasesButton: UIButton = objects.appInfoButton(
        title: strings.restorePurchases,
        pointer: OnboardingViewController(),
        action: #selector(restorePurchasesAction)
    )
    
    lazy var termsOfUseButton: UIButton = objects.appInfoButton(
        title: strings.termsOfUse,
        pointer: OnboardingViewController(),
        action: #selector(termsOfUseAction)
    )
    
    lazy var privacyPolicyButton: UIButton = objects.appInfoButton(
        title: strings.privacyPolicy,
        pointer: PaywallViewController(),
        action: #selector(privacyPolicyAction)
    )
    
    let strings = Strings.onboardingViewController
    let objects = Objects.onboardingViewController
    
    let onboardingViewModel = OnboardingViewModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Colors.main
        
        addSubviews()
        makeConstraints()
        
        bind() 
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        getStartedButton.applyGradient()
    }
    
    func addSubviews() {
        view.addSubview(fullAppInfoStackView)
    }
    
    func makeConstraints() {
        fullAppInfoStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        appFunctionalityImageView.snp.makeConstraints { make in
            make.height.equalTo(view.snp.height).multipliedBy(0.5)
        }
    }
    
    func bind() {
        onboardingViewModel.appFunctionalityText
            .bind(to: appFunctionalityLabel.rx.text)
            .disposed(by: disposeBag)
        
        onboardingViewModel.appFunctionalityImage
            .bind(to: appFunctionalityImageView.rx.image)
            .disposed(by: disposeBag)
        
        onboardingViewModel.appFunctionalityCapabilitiesText
            .bind(to: appFunctionalityCapabilitiesLabel.rx.text)
            .disposed(by: disposeBag)
        
        onboardingViewModel.goToEntryVC
            .bind(onNext: { _ in
                self.goToPaywallVC()
            })
            .disposed(by: disposeBag)
    }
    
    @objc
    func restorePurchasesAction() {

    }
    
    @objc
    func termsOfUseAction() {
        
    }
    
    @objc
    func privacyPolicyAction() {
        
    }
    
    func goToPaywallVC() {
        let vc = PaywallViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
}

extension UIButton {
    func applyGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.cornerRadius = 15
        gradientLayer.colors = [UIColor.color11.cgColor, UIColor.color12.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

