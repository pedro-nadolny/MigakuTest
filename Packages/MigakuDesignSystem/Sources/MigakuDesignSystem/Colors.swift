import Foundation
import SwiftUI

public extension Color {
    enum Basic {
        public static let Blue = Color("Blue", bundle: .module)
        public static let DarkBlue = Color("DarkBlue", bundle: .module)
        public static let Purple = Color("Purple", bundle: .module)
        public static let Red = Color("Red", bundle: .module)
        public static let Seafoam = Color("Seafoam", bundle: .module)
        public static let PowderBlue = Color("PowderBlue", bundle: .module)
    }
    
    enum Background {
        public static let Background2 = Color("Background2", bundle: .module)
    }
    
    enum Shadow {
        public static let Medium1 = Color("ShadowMedium1", bundle: .module)
        public static let Medium2 = Color("ShadowMedium2", bundle: .module)
        public static let Medium3 = Color("ShadowMedium3", bundle: .module)
        public static let Medium4 = Color("ShadowMedium4", bundle: .module)
        public static let Medium5 = Color("ShadowMedium5", bundle: .module)
        public static let Medium6 = Color("ShadowMedium6", bundle: .module)
    }
}

public extension Array where Element == Color {
    enum GradientColors {
        public static let Orange = [
            Color("GradientOrange1", bundle: .module),
            Color("GradientOrange2", bundle: .module)
        ]
        
        public static let Yellow = [
            Color("GradientYellow1", bundle: .module),
            Color("GradientYellow2", bundle: .module)
        ]
    }
}
