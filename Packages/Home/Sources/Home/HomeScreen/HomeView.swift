import SwiftUI
import MigakuDesignSystem

struct HomeView: View {
    @ObservedObject private var viewModel: ViewModel
    @State private var state: ViewModel.State = .idle
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        ZStack {
            Color.Basic.Purple.ignoresSafeArea()
            HomeList(state: state)
            
            VStack {
                Spacer()
                HomeFloatingTabBar()
            }
        }
        .onAppear { Task { await viewModel.loadList() } }
        .onReceive(viewModel.$state) { newState in
            withAnimation(.easeOut) { self.state = newState }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
      HomeView(viewModel: HomeView.ViewModel())
  }
}

