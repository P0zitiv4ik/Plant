import UIKit.UIImage

extension ProcedureStatus {

//    var checkmarkImage: UIImage {
//        switch self {
//        case .accomplished:
//            return
//        case .unfulfilled:
//            return
//        case .pending:
//            return 
//        }
//    }

    var iconColor: String {
        let strings = Strings.myGardenViewController

        switch self {
        case .accomplished:
            return strings.green
        case .unfulfilled:
            return strings.red
        case .pending:
            return strings.green
        }
    }
}
