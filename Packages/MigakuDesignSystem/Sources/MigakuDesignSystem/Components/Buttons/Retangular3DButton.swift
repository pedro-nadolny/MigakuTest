import Foundation
import SwiftUI

public struct Retangular3DButton<Content: View>: View {
    private let height: Double
    private let content: () -> Content
    @State private var offset: Double
    
    public init(height: Double, @ViewBuilder content: @escaping () -> Content) {
        self.height = height
        self.content = content
        offset = height
    }

    public var body: some View {
        GeometryReader { metrics in
            ZStack {
                let verticalSide = Rectangle3DSides(height: offset, initialHeight: height)
                
                verticalSide
                    .fill(Color.Basic.PowderBlue)
                    .overlay(verticalSide.stroke(Color.Basic.DarkBlue, style: .init(lineWidth: 2, lineJoin: .round)))
                
                ZStack {
                    let frontPath = Path { path in
                        path.addPath(Rectangle().path(in: metrics.frame(in: .local)))
                    }
                    
                    frontPath
                        .fill(Color.Basic.Purple)
                        .overlay {
                            frontPath
                                .stroke(Color.Basic.DarkBlue, style: .init(lineWidth: Layout.strokeWidth, lineJoin: .round))
                        }
                    
                    content()
                }
                .offset(x: -(height - offset), y: height - offset)
            }
            .pressAction {
                withAnimation(Animations.pressAnimation) { offset = .zero }
            } onRelease: {
                withAnimation(Animations.releaseAnimation) { offset = height }
            }
        }
    }
}

private enum Layout {
    static let strokeWidth = 2.0
}

private enum Animations {
    static let pressAnimation = Animation.easeOut(duration: 0.08)
    static let releaseAnimation = Animation.spring(response: 0.25, dampingFraction: 0.15)
}
