import Foundation
import Combine

extension HomeView {
    @MainActor final class ViewModel: ObservableObject {
        enum State {
            case idle
            case loading
            case loaded(list: [HomeListItem])
            case error(error: Error)
        }
        
        @Published private(set) var state = State.idle
        
        private let homeService: HomeService
        
        init(homeService: HomeService = HomeServiceFake()) {
            self.homeService = homeService
        }
        
        func loadList() async {
            state = .loading
            
            switch await homeService.fetchHomeList() {
            case .success(let list):
                state = .loaded(list: list)
            
            case .failure(let error):
                state = .error(error: error)
            }
        }
    }
}
