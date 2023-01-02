import Foundation
import SwiftUI

struct PressActions: ViewModifier {
    let onPress: () -> Void
    let onRelease: () -> Void
    
    func body(content: Content) -> some View {
        var started = false
        
        content
            .simultaneousGesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { _ in
                        if started { return }
                        self.onPress()
                        started = true
                    }
                    .onEnded { _ in
                        started = false
                        self.onRelease()
                    }
            )
    }
}

public extension View {
    func pressAction(
        onPress: @escaping (() -> Void) = {},
        onRelease: @escaping (() -> Void) = {}
    ) -> some View {
       modifier(PressActions(onPress: onPress, onRelease: onRelease))
   }
}
