extension Procedures {

//    var iconName: String {
//        switch self {
//        case .watering:
//            return
//        case .repot:
//            return
//        case .cut:
//            return
//        case .spraying:
//            return
//        case .fertilizer:
//            return
//        }
//    }

    var nameText: String {
        let strings = Strings.myGardenViewController
        
        switch self {
        case .watering:
            return strings.watering
        case .repot:
            return strings.repot
        case .cut:
            return strings.cut
        case .spraying:
            return strings.spraying
        case .fertilizer:
            return strings.fertilizer
        }
    }

    var needsText: String {
        let strings = Strings.myGardenViewController
        
        switch self {
        case .watering:
            return strings.needsToBeWatered
        case .repot:
            return strings.needsToBeReplanted
        case .cut:
            return strings.needsToBeCuted
        case .spraying:
            return strings.needsToBeSprayed
        case .fertilizer:
            return strings.needsToBeFertilized
        }
    }
}
