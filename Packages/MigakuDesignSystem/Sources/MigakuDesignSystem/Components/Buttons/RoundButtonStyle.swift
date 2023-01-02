import Foundation
import SwiftUI

public struct RoundButtonStyle: ButtonStyle {
    public init() {}
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(Layout.paddingAmount)
            .background(.white)
            .frame(width: 40, height: 40)
            .clipShape(Circle())
            .shadowMedium()
    }
}

private enum Layout {
    static var paddingAmount: CGFloat = 8
}
 
