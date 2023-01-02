import Foundation
import SwiftUI

public struct Round3DButton: View {
    public init() {}
    
    @State private var isPressed = false

    public var body: some View {
        GeometryReader { metrics in
            ZStack {
                let backPath = Path { path in
                    path.addPath(Circle().path(in: metrics.frame(in: .local)))
                }
                
                backPath
                    .fill(LinearGradient(colors: .GradientColors.Orange, startPoint: .topLeading, endPoint: .bottomTrailing))
                    .overlay {
                        backPath
                            .stroke(Color.Basic.DarkBlue, style: .init(lineWidth: Layout.strokeWidth))
                    }
                    .offset(Layout.offset)
                
                ZStack {
                    let frontPath = Path { path in
                        path.addPath(Circle().path(in: metrics.frame(in: .local)))
                    }
                    
                    frontPath
                        .fill(LinearGradient(colors: .GradientColors.Orange, startPoint: .init(x: 0.5, y: 0.1389), endPoint: .init(x: 0.5, y: 0.9325)))
                        .overlay {
                            frontPath
                                .stroke(Color.Basic.DarkBlue, style: .init(lineWidth: Layout.strokeWidth))
                        }
                    
                    Image.Assets.Arrow
                        .offset(x: 1)
                }
                .offset(isPressed ? Layout.offset : .zero )
            }
            .pressAction {
                withAnimation(.easeOut(duration: Animation.pressDuration)) {
                    isPressed = true
                }
            } onRelease: {
                withAnimation(.spring(response: 0.25, dampingFraction: 0.15)) {
                    isPressed = false
                }
            }
        }
    }
}

private enum Layout {
    static let strokeWidth = 2.0
    static let offset = CGSize(width: -6, height: 6)
}

private enum Animation {
    static let pressDuration = 0.08
}
