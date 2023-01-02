import Foundation
import SwiftUI
import Combine
import MigakuCore
import MigakuDesignSystem

struct HomeList: View {
    let state: HomeView.ViewModel.State
    
    var body: some View {
        ScrollView {
            LazyVStack {
                HomeHeader()
                
                Text(Strings.title)
                    .titleStyle(Layout.titleFontSize)
                    .padding(.vertical)

                switch state {
                case .loading:
                    ProgressView()
                        .scaleEffect(Layout.progressViewScale)
                        .tint(Gradient(colors: .GradientColors.Yellow))
                    
                case .loaded(let list):
                    ForEach(list) { HomeListCard(item: $0) }
                        .padding(Layout.listItemPadding)
                
                case .error:
                    HomeError()
                    
                case .idle:
                    EmptyView()
                }
               

                Spacer()
                    .frame(height: 64)
                    .background(Color.clear)
            }
        }
    }
}

private enum Strings {
    static let title = "Today"
}

private enum Layout {
    static let listItemPadding = EdgeInsets(top: 0, leading: 16, bottom: 8, trailing: 16)
    static let titleFontSize = 20.0
    static let progressViewScale = 1.35
}
