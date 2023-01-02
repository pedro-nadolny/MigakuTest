import Foundation
import SwiftUI
import MigakuDesignSystem
import MigakuCore

struct HomeHeader: View {
    private enum Layout {
        static var horizontalPadding = 16.0
        static var gradientHeight = 226.0
        static var stackSpacing = 40.0
        static var height = 248.0
    }
    
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    
    var body: some View {
        ZStack {
            VStack {
                Image.Assets.Header
                    .resizable()
                    .frame(height: Layout.gradientHeight)
                    .offset(y: -safeAreaInsets.top)
                Spacer()
            }

            VStack {
                HomeHeaderNavigation()
                    .padding(.horizontal, Layout.horizontalPadding)
                Spacer()
                HomeCard()
            }
        }
        .frame(height: Layout.height)
    }
}
