import Foundation

enum HomeServiceError: Error {
    case someError
}

protocol HomeService {
    func fetchHomeList() async -> Result<[HomeListItem], HomeServiceError>
}

final class HomeServiceFake: HomeService {
    func fetchHomeList() async -> Result<[HomeListItem], HomeServiceError> {
        do {
            try await Task.sleep(for: .seconds(2))
        } catch {
            return .failure(.someError)
        }
        
        return .success(HomeListItem.sampleList)
    }
}
