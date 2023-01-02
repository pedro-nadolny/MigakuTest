import Foundation
import CoreText

enum FontRegistrator {
    static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        bundle.url(forResource: fontName, withExtension: fontExtension)

        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
            let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
            let font = CGFont(fontDataProvider) else {
                fatalError("Couldn't create font from filename: \(fontName) with extension \(fontExtension)")
        }
        
        var error: Unmanaged<CFError>?
        CTFontManagerRegisterGraphicsFont(font, &error)
        
        if error != nil {
            fatalError("Fonts did not load properly")
        }
    }
}
