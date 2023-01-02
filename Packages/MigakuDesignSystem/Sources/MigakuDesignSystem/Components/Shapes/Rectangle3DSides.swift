import SwiftUI

struct Rectangle3DSides: Shape {
    var height: Double
    let initialHeight: Double
    
    init(height: Double, initialHeight: Double) {
        self.height = height
        self.initialHeight = initialHeight
    }
    
    var animatableData: Double {
        get { height }
        set { height = newValue }
    }
     
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: .init(x: -initialHeight + rect.minX, y: initialHeight + rect.minY))
        path.addLine(to: .init(x: -initialHeight + rect.minX, y: initialHeight + rect.maxY))
        path.addLine(to: .init(x: -initialHeight + height + rect.minX, y: initialHeight + rect.maxY - height))
        path.addLine(to: .init(x: -initialHeight + height + rect.minX, y: initialHeight - height + rect.minY))
        path.addLine(to: .init(x: -initialHeight + rect.minX, y: initialHeight + rect.minY))

        path.move(to: .init(x: -initialHeight + rect.minX, y: initialHeight + rect.maxY))
        path.addLine(to: .init(x: -initialHeight + rect.minX + height, y: initialHeight + rect.maxY - height))
        path.addLine(to: .init(x: -initialHeight + rect.maxX + height, y: initialHeight + rect.maxY - height))
        path.addLine(to: .init(x: -initialHeight + rect.maxX, y: initialHeight + rect.maxY))
        path.addLine(to: .init(x: -initialHeight + rect.minX, y: initialHeight + rect.maxY))
        
        return path
    }
}
