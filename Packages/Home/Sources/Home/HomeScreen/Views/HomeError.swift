import Foundation
import SwiftUI

struct HomeError: View {
    var body: some View {
        Text("💥")
            .titleStyle(Layout.iconSize)
        Text("Something went wrong, try again later!")
            .titleStyle(Layout.titleSize)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
    }
}

private enum Layout {
    static let iconSize = 60.0
    static let titleSize = 24.0
    
}
