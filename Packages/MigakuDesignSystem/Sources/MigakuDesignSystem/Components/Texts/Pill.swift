import Foundation
import SwiftUI

struct PillModifier: ViewModifier {
    private let foregroundColor: Color?
    private let backgroundColor: Color?
    
    init(
        _ foregroundColor: Color? = .white,
        _ backgroundColor: Color? = .Basic.Blue
    ) {
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
    }
    
    private enum Layout {
        static var height: CGFloat = 24.0
        static var padding: CGFloat = 8.0
    }
    
    public func body(content: Content) -> some View {
        content
            .font(.interBold(12))
            .padding(.all, Layout.padding)
            .frame(height: Layout.height)
            .foregroundColor(foregroundColor)
            .background(backgroundColor)
            .cornerRadius(Layout.height/2)
    }
}

public extension Text {
    func pillStyle(
        foregroundColor: Color? = .white,
        backgroundColor: Color? = .Basic.Blue
    ) -> some View {
        modifier(PillModifier(foregroundColor, backgroundColor))
    }
}
