import UIKit

struct Fonts {
    static let satoshi = SatoshiFonts.self
    static let poppins = PoppinsFonts.self
}

struct SatoshiFonts {
    static func satoshiMedium(size: CGFloat) -> UIFont {
        return UIFont(name: "Satoshi-Medium", size: size)!
    }
    
    static func satoshiBold(size: CGFloat) -> UIFont {
        return UIFont(name: "Satoshi-Bold", size: size)!
    }
}

struct PoppinsFonts {
    static func poppinsSemiBold(size: CGFloat) -> UIFont {
        return UIFont(name: "Poppins-SemiBold", size: size)!
    }
}
