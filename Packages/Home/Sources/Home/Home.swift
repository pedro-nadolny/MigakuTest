import SwiftUI

public enum Home {
    @MainActor public static func makeHome() -> some View {
        HomeView(viewModel: HomeView.ViewModel())
    }
}
 
