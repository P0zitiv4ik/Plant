import UIKit

class HistoryViewController: UIViewController {
    
    lazy var topPanelStackView: UIStackView = objects.topPanelStackView(
        arrangedSubviews: [historyLabel, settingsButton]
    )
    
    lazy var historyLabel: UILabel = objects.historyLabel()
    
    lazy var settingsButton: UIButton = objects.settingsButton(
        target: HistoryViewController(),
        action: #selector(settingsAction)
    )
    
    let strings = Strings.historyViewController
    let images = Images.historyViewController
    let objects = Objects.historyViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = Colors.main
        
        addSubviews()
        makeConstraints()
    }
    
    func addSubviews() {
        view.addSubview(topPanelStackView)
        
    }
    
    func makeConstraints() {
        topPanelStackView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(72)
            make.horizontalEdges.equalToSuperview()
        }
    }
    
    @objc
    func settingsAction() {
        let vc = SettingsViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: false)
    }
}
