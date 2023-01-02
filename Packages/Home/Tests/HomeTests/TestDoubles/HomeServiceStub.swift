import Foundation
@testable import Home

final class HomeServiceStub: HomeService {
    var stubbedList: Result<[HomeListItem], HomeServiceError> = .success([])
    
    func fetchHomeList() async -> Result<[HomeListItem], HomeServiceError> {
        stubbedList
    }
}
