import Foundation

public enum MigakuDesignSystem {
    
    public static func registerAllFonts() {
        GTMaru.allCases.forEach {
            FontRegistrator.registerFont(
                bundle: .module,
                fontName: $0.rawValue,
                fontExtension: "otf"
            )
        }
        
        Inter.allCases.forEach {
            FontRegistrator.registerFont(
                bundle: .module,
                fontName: $0.rawValue,
                fontExtension: "ttf"
            )
        }
    }
}
