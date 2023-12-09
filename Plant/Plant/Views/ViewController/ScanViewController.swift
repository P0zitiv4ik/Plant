import UIKit
import SnapKit

class ScanViewController: UIViewController {
    
    lazy var scanStackView: UIStackView = objects.scanStackView(
        arrangedSubviews: [scanImageView, identificationMessageLabel]
    )
          
    lazy var identificationMessageLabel: UILabel = objects.identificationMessageLabel()
    
    lazy var scanImageView: UIImageView = objects.scanImageView()
    
    let objects = Objects.scanViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Colors.main
        
        addSubviews()
        makeConstraints()
    }
    
    func addSubviews() {
        view.addSubview(scanStackView)
    }
    
    func makeConstraints() {
        scanStackView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
