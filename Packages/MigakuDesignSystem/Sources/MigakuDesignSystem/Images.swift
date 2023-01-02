import Foundation
import SwiftUI

public extension Image {
    enum Icon {
        public static var Study: Image {
            Image("Study", bundle: .module).renderingMode(.template)
        }
        
        public static var Dictionary: SwiftUI.Image {
            Image("Dictionary", bundle: .module).renderingMode(.template)
        }
        
        public static var Gear: Image {
            Image("Gear", bundle: .module).renderingMode(.template)
        }
        
        public static var Feedback: Image {
            Image("Feedback", bundle: .module).renderingMode(.template)
        }
    }
    
    enum Assets {
        public static var Header: Image { Image("Header", bundle: .module) }
        public static var Mandarin: Image { Image("Mandarin", bundle: .module) }
        public static var Memoji: Image { Image("Memoji", bundle: .module) }
        public static var GoButton: Image { Image("GoButtonPressed", bundle: .module) }
        public static var Flower: Image { Image("Flower", bundle: .module) }
        public static var Japan: Image { Image("Japan", bundle: .module) }
        public static var Sushi: Image { Image("Sushi", bundle: .module) }
        public static var KLetter: Image { Image("KLetter", bundle: .module) }
        public static var CardBackground: Image { Image("CardBackground", bundle: .module) }
        public static var Arrow: Image { Image("Arrow", bundle: .module) }
    }
}
