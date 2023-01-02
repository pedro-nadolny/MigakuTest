import SwiftUI

public extension Font {
    static func maruBlack(_ size: CGFloat) -> Font {
        .custom(GTMaru.black.rawValue, size: size)
    }
    
    static func maruBold(_ size: CGFloat) -> Font {
        .custom(GTMaru.bold.rawValue, size: size)
    }
    
    static func maruMedium(_ size: CGFloat) -> Font {
        .custom(GTMaru.medium.rawValue, size: size)
    }
    
    static func maruRegular(_ size: CGFloat) -> Font {
        .custom(GTMaru.regular.rawValue, size: size)
    }
    
    static func maruLight(_ size: CGFloat) -> Font {
        .custom(GTMaru.light.rawValue, size: size)
    }
    
    static func interBlack(_ size: CGFloat) -> Font {
        .custom(Inter.black.rawValue, size: size)
    }
    
    static func interBold(_ size: CGFloat) -> Font {
        .custom(Inter.bold.rawValue, size: size)
    }
    
    static func interMedium(_ size: CGFloat) -> Font {
        .custom(Inter.medium.rawValue, size: size)
    }
    
    static func interRegular(_ size: CGFloat) -> Font {
        .custom(Inter.regular.rawValue, size: size)
    }
    
    static func interLight(_ size: CGFloat) -> Font {
        .custom(Inter.light.rawValue, size: size)
    }
}

enum GTMaru: String, CaseIterable {
    case black = "GTMaruTrial-Black"
    case bold = "GTMaruTrial-Bold"
    case medium = "GTMaruTrial-Medium"
    case regular = "GTMaruTrial-Regular"
    case light = "GTMaruTrial-Light"
}

enum Inter: String, CaseIterable {
    case black = "Inter-Black"
    case bold = "Inter-Bold"
    case medium = "Inter-Medium"
    case regular = "Inter-Regular"
    case light = "Inter-Light"
}
