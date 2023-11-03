import XCTest
import Pizza_Contract
@testable import Pizza_Impl

/// Unit test class for PizzaService.
///
/// References :
/// - [XCTest Documentation](https://developer.apple.com/documentation/xctest).
/// - [Defining Test Cases and Test Methods](https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods).
class UnitTestPizzaService: XCTestCase {
    
    /// The service instance to test.
    var service : IPizzaService! = nil

    /// Basic set up of service instance.
    override func setUp() {
        service = PizzaService();
    }
    
    /// Basic tear down of service instance.
    override func tearDown() {
        service = nil
    }
    
    /// Test that the service instance return only two pizzas.
    func testServiceReturnEightEntries() {
        
        // Arrange
        let expected = 8
        
        // Act
        let actual = service.getAllPizza().count
        
        // Assert
        XCTAssertEqual(expected, actual)
    }
    
}
