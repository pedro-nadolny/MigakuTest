import Foundation
import SwiftUI
import MigakuDesignSystem

struct HomeHeaderNavigation: View {
    private enum Strings {
        static var pillBoldText = "53"
        static var pillMediumText = "KNOWN WORDS"
    }
    
    var body: some View {
        HStack {
            Button(action: {  }, label: { Image.Assets.Memoji })
                .buttonStyle(RoundButtonStyle())
            Spacer()
            Text(pillText)
                .pillStyle()
            Spacer()
            Button(action: {  }, label: { Image.Icon.Gear.foregroundColor(.Basic.DarkBlue) })
                .buttonStyle(RoundButtonStyle())
            
        }
    }
}

private extension HomeHeaderNavigation {
    var pillText: AttributedString {
        var string = AttributedString(stringLiteral: "\(Strings.pillBoldText)  \(Strings.pillMediumText)")
        
        let boldRange = string.range(of: Strings.pillBoldText)!
        let mediumRange = string.range(of: Strings.pillMediumText)!
    
        string[boldRange].font = .maruBlack(12)
        string[mediumRange].font = .interMedium(12)
        return string
    }
}
