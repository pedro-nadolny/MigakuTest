import Foundation
import SwiftUI

public extension View {
    func shadowMedium() -> some View{
        self.shadow(color: .Shadow.Medium1, radius: 0.55, x: 0, y: 0.25)
            .shadow(color: .Shadow.Medium2, radius: 1.33, x: 0, y: 0.6)
            .shadow(color: .Shadow.Medium3, radius: 2.5, x: 0, y: 1.13)
            .shadow(color: .Shadow.Medium4, radius: 4.47, x: 0, y: 2.01)
            .shadow(color: .Shadow.Medium5, radius: 8.36, x: 0, y: 3.76)
            .shadow(color: .Shadow.Medium6, radius: 20, x: 0, y: 9)
    }
}
