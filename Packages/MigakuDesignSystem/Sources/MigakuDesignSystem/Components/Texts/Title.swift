import Foundation
import SwiftUI

struct TitleModifier: ViewModifier {
    private let titleSize: CGFloat
    
    init(_ titleSize: CGFloat) {
        self.titleSize = titleSize
    }
    
    public func body(content: Content) -> some View {
        content
            .font(.maruBlack(titleSize))
            .foregroundColor(.Basic.DarkBlue)
    }
}

public extension Text {
    func titleStyle(_ titleSize: CGFloat) -> some View {
        modifier(TitleModifier(titleSize))
    }
}
