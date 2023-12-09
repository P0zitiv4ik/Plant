import UIKit
import SnapKit
import RxSwift

class PaywallViewController: UIViewController {

    lazy var fullInfoOnSubscriptionsStackView: UIStackView = objects.fullInfoOnSubscriptionsStackView(
        arrangedSubviews: [basicInfoOnSubscriptionsStackView, nextScreenStackView]
    )

    lazy var basicInfoOnSubscriptionsStackView: UIStackView = objects.basicInfoOnSubscriptionsStackView(
        arrangedSubviews: [topPanelStackView, reviewOnTheAppImageView, appFeaturesStackView, typesOfSelectedSubscriptionsStackView]
    )
    
    lazy var topPanelStackView: UIStackView = objects.topPanelStackView(
        arrangedSubviews: [spacerView, activateAllFeaturesLabel, closePaywallVСButton]
    )
    
    lazy var activateAllFeaturesLabel: UILabel = objects.activateAllFeaturesLabel()

    lazy var spacerView: UIView = UIView()
    
    lazy var closePaywallVСButton: UIButton = objects.closePaywallVСButton(
        action: #selector(closePaywallVСAction)
    )
    
    lazy var reviewOnTheAppImageView: UIImageView = objects.reviewOnTheAppImageView()
    
    lazy var appFeaturesStackView: UIStackView = objects.appFeaturesStackView(
        arrangedSubviews: [firstFeatureStackView, secondFeatureStackView, thirdFeatureStackView]
    )
    
    lazy var firstFeatureStackView: UIStackView = objects.appFeatureStackView(
        arrangedSubviews: [firstFeatureImageView, firstFeatureLabel]
    )
    
    lazy var firstFeatureImageView: UIImageView = objects.appFeatureImageView(
        image: images.leaf
    )
    
    lazy var firstFeatureLabel: UILabel = objects.appFeatureLabel(
        text: strings.firstAdvantageOfTheApp
    )

    lazy var secondFeatureStackView: UIStackView = objects.appFeatureStackView(
        arrangedSubviews: [secondFeatureImageView, secondFeatureLabel]
    )
    
    lazy var secondFeatureImageView: UIImageView = objects.appFeatureImageView(
        image: images.leaf
    )
    
    lazy var secondFeatureLabel: UILabel = objects.appFeatureLabel(
        text: strings.secondAdvantageOfTheApp
    )
    
    lazy var thirdFeatureStackView: UIStackView = objects.appFeatureStackView(
        arrangedSubviews: [thirdFeatureImageView, thirdFeatureLabel]
    )
    
    lazy var thirdFeatureImageView: UIImageView = objects.appFeatureImageView(
        image: images.leaf
    )
    
    lazy var thirdFeatureLabel: UILabel = objects.appFeatureLabel(
        text: strings.thirdAdvantageOfTheApp
    )
    
    lazy var typesOfSelectedSubscriptionsStackView: UIStackView = objects.typesOfSelectedSubscriptionsStackView(
        arrangedSubviews: [selectedWeeklySubscriptionStackView, selectedAnnualSubscriptionStackView]
    )
    
    lazy var selectedWeeklySubscriptionStackView: UIStackView = objects.selectedSubscriptionStackView(
        arrangedSubviews: [weeklySubscriptionInfoStackView, selectedWeeklySubscriptionImageView],
        target: paywallViewModel,
        action: #selector(paywallViewModel.weeklyAction)
    )
    
    lazy var weeklySubscriptionGradientLayer: CAGradientLayer = CAGradientLayer()
    
    lazy var weeklySubscriptionInfoStackView: UIStackView = objects.subscriptionInfoStackView(
        arrangedSubviews: [billedWeeklyLabel, weeklySubscriptionStackView]
    )
    
    lazy var billedWeeklyLabel: UILabel = objects.subscriptionInfoLabel(
        text: strings.billedWeekly
    )
    
    lazy var weeklySubscriptionStackView: UIStackView = objects.subscriptionTypeStackView(
        arrangedSubviews: [weeklySubscriptionLabel, weeklySubscriptionPriceLabel],
        spacing: 8
    )
    
    lazy var weeklySubscriptionLabel: UILabel = objects.subscriptionTypeLabel(
        text: strings.weekly
    )
    
    lazy var weeklySubscriptionPriceLabel: UILabel = objects.subscriptionInfoLabel(
        text: strings.weeklySubscriptionPrice(weeklySubscriptionPriceValue)
    )
    
    lazy var selectedWeeklySubscriptionImageView: UIImageView = objects.selectedSubscriptionImageView(
        image: images.checkmark
    )
    
    lazy var selectedAnnualSubscriptionStackView: UIStackView = objects.selectedSubscriptionStackView(
        arrangedSubviews: [yearlySubscriptionInfoStackView, selectedAnnualSubscriptionImageView],
        target: paywallViewModel,
        action: #selector(paywallViewModel.yearlyAction)
    )
    
    lazy var yearlySubscriptionGradientLayer: CAGradientLayer = CAGradientLayer()
    
    lazy var yearlySubscriptionInfoStackView: UIStackView = objects.subscriptionInfoStackView(
        arrangedSubviews: [billedAnnuallyLabel, yearlySubscriptionStackView]
    )
    
    lazy var billedAnnuallyLabel: UILabel = objects.subscriptionInfoLabel(
        text: strings.billedAnnually
    )
    
    lazy var yearlySubscriptionStackView: UIStackView = objects.subscriptionTypeStackView(
        arrangedSubviews: [yearlySubscriptionLabel, yearlySubscriptionPriceLabel],
        spacing: 18
    )
    
    lazy var yearlySubscriptionLabel: UILabel = objects.subscriptionTypeLabel(
        text: strings.yearly
    )
    
    lazy var yearlySubscriptionPriceLabel: UILabel = objects.subscriptionInfoLabel(
        text: strings.annualSubscriptionPrice(annualSubscriptionPriceValue)
    )
    
    lazy var selectedAnnualSubscriptionImageView: UIImageView = objects.selectedSubscriptionImageView(
        image: images.border
    )
    
    lazy var nextScreenStackView: UIStackView = objects.nextScreenStackView(
        arrangedSubviews: [continueButton, appInfoStackView]
    )
    
    lazy var continueButton: UIButton = objects.nextScreenButton(
        title: strings.continue,
        pointer: PaywallViewController(),
        action: #selector(continueAction)
    )
    
    lazy var appInfoStackView: UIStackView = objects.appInfoStackView(
        arrangedSubviews: [restorePurchasesButton, termsOfUseButton, privacyPolicyButton]
    )
    
    lazy var restorePurchasesButton: UIButton = objects.appInfoButton(
        title: strings.restorePurchases,
        pointer: PaywallViewController(),
        action: #selector(restorePurchasesAction)
    )
    
    lazy var termsOfUseButton: UIButton = objects.appInfoButton(
        title: strings.termsOfUse,
        pointer: PaywallViewController(),
        action: #selector(termsOfUseAction)
    )
    
    lazy var privacyPolicyButton: UIButton = objects.appInfoButton(
        title: strings.privacyPolicy,
        pointer: PaywallViewController(),
        action: #selector(privacyPolicyAction)
    )
    
    let annualSubscriptionPriceValue: Float = 25.99
    let weeklySubscriptionPriceValue: Float = 5.99
    
    let strings = Strings.paywallViewController
    let images = Images.paywallViewController
    let objects = Objects.paywallViewController
    
    let paywallViewModel = PaywallViewModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Colors.main
        
        addSubviews()
        makeConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        DispatchQueue.main.async { [self] in
            weeklySubscriptionGradientLayer = objects.applyLinearGradientBorder(
                bounds: selectedWeeklySubscriptionStackView.bounds,
                cornerRadius: selectedWeeklySubscriptionStackView.layer.cornerRadius
            )
            
            yearlySubscriptionGradientLayer = objects.applyLinearGradientBorder(
                bounds: selectedAnnualSubscriptionStackView.bounds,
                cornerRadius: selectedAnnualSubscriptionStackView.layer.cornerRadius
            )
            
            addSublayer()
            bind()
        }
    }

    func addSubviews() {
        view.addSubview(fullInfoOnSubscriptionsStackView)
    }
    
    func makeConstraints() {
        fullInfoOnSubscriptionsStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        topPanelStackView.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
        }
        
        spacerView.snp.makeConstraints { make in
            make.size.equalTo(24)
        }
        
        firstFeatureImageView.snp.makeConstraints { make in
            make.size.equalTo(14)
        }
        
        secondFeatureImageView.snp.makeConstraints { make in
            make.size.equalTo(14)
        }
        
        thirdFeatureImageView.snp.makeConstraints { make in
            make.size.equalTo(14)
        }
        
        typesOfSelectedSubscriptionsStackView.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
        }
        
        selectedWeeklySubscriptionImageView.snp.makeConstraints { make in
            make.size.equalTo(26)
        }
        
        selectedAnnualSubscriptionImageView.snp.makeConstraints { make in
            make.size.equalTo(26)
        }
        
        continueButton.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(60)
        }
    }
    
    func addSublayer() {
        selectedWeeklySubscriptionStackView.layer.addSublayer(weeklySubscriptionGradientLayer)
        selectedAnnualSubscriptionStackView.layer.addSublayer(yearlySubscriptionGradientLayer)
        continueButton.applyGradient()
    }
    
    func bind() {
        paywallViewModel.weeklyIsHidden
            .bind(to: weeklySubscriptionGradientLayer.rx.isHidden)
            .disposed(by: disposeBag)
        
        paywallViewModel.weeklyBorderWidth
            .bind(onNext: { borderWidth in
                self.selectedWeeklySubscriptionStackView.layer.borderWidth = borderWidth
            })
            .disposed(by: disposeBag)
        
        paywallViewModel.weeklyImage
            .bind(to: selectedWeeklySubscriptionImageView.rx.image)
            .disposed(by: disposeBag)
        
        paywallViewModel.yearlyIsHidden
            .bind(to: yearlySubscriptionGradientLayer.rx.isHidden)
            .disposed(by: disposeBag)
        
        paywallViewModel.yearlyBorderWidth
            .bind(onNext: { borderWidth in
                self.selectedAnnualSubscriptionStackView.layer.borderWidth = borderWidth
            })
            .disposed(by: disposeBag)
        
        paywallViewModel.yearlyImage
            .bind(to: selectedAnnualSubscriptionImageView.rx.image)
            .disposed(by: disposeBag)
    }
    
    @objc
    func closePaywallVСAction() {
        dismiss(animated: true)
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
    
    @objc
    func continueAction() {
        let vc = HistoryViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: false)
    }
}
