import Foundation
import SwiftUI
import MigakuDesignSystem

struct HomeFloatingTabBar: View {
    @State private var tappedButtonPostion: Int = 0
    
    private enum Layout {
        static var height = 56.0
        static var width = 128.0
        static var spacing = 37.0
    }
    
    var body: some View {
        HStack(spacing: Layout.spacing) {
            Button {
                tappedButtonPostion = 0
            } label: {
                Image.Icon.Study
            }
            .foregroundStyle(
                self.foregroundStyle(forButtonWithIndex: 0)
            )
            
            Button {
                tappedButtonPostion = 1
            } label: {
                Image.Icon.Dictionary
            }
            .foregroundStyle(
                self.foregroundStyle(forButtonWithIndex: 1)
            )
        }
        .frame(width: Layout.width, height: Layout.height)
        .background(.white)
        .cornerRadius(Layout.height/2)
        .shadowMedium()
    }
}

private extension HomeFloatingTabBar {
    func foregroundStyle(forButtonWithIndex index: Int) -> Gradient {
        if tappedButtonPostion == index {
            return Gradient(colors: .GradientColors.Orange)
        }
        
        return Gradient(colors: [Color.black.opacity(0.2)])
    }
}
