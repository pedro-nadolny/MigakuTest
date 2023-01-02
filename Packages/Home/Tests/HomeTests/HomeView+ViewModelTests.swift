
import XCTest
import Combine
@testable import Home

@MainActor final class HomeTests: XCTestCase {
    private let serviceStub = HomeServiceStub()
    private let closureSpy = ClosureSpy<HomeView.ViewModel.State>()
    private lazy var sut = {
        let sut = HomeView.ViewModel(homeService: serviceStub)
        stateCancellable = sut.$state.sink(receiveValue: closureSpy.closure)
        return sut
    }()
    
    private var stateCancellable: AnyCancellable?
    
    func testLoad_WhenServicesReturnList_ShouldChangeStateToLoaded() async throws {
        // Given
        let stubbedList: [HomeListItem] = [.fixture(), .fixture(), .fixture()]
        serviceStub.stubbedList = .success(stubbedList)
        
        // When
        await sut.loadList()
        
        // Then
        
        XCTAssertEqual(closureSpy.callCount, 3)
        
        guard case .idle = closureSpy.receivedValues[0] else {
            XCTFail("State should be idle")
            return
        }

        guard case .loading = closureSpy.receivedValues[1] else {
            XCTFail("State should be loading")
            return
        }
        
        guard case .loaded(let returnedList) = closureSpy.receivedValues[2] else {
            XCTFail("State should be loading")
            return
        }
        
        XCTAssertEqual(returnedList, stubbedList)
    }
    
    func testLoad_WhenServicesReturnList_ShouldChangeStateToError() async throws {
        // Given
        serviceStub.stubbedList = .failure(.someError)
        
        // When
        await sut.loadList()
        
        // Then
        
        XCTAssertEqual(closureSpy.callCount, 3)
        
        guard case .idle = closureSpy.receivedValues[0] else {
            XCTFail("State should be idle")
            return
        }

        guard case .loading = closureSpy.receivedValues[1] else {
            XCTFail("State should be loading")
            return
        }
        
        guard case .error(let error) = closureSpy.receivedValues[2] else {
            XCTFail("State should be loading")
            return
        }
        
        XCTAssert(error as? HomeServiceError == .someError)
    }
}
