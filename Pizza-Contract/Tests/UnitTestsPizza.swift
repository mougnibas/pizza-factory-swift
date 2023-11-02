import XCTest
@testable import Pizza_Contract

/// Unit test class for Pizza class.
///
/// References :
/// - [XCTest Documentation](https://developer.apple.com/documentation/xctest).
/// - [Defining Test Cases and Test Methods](https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods).
final class UnitTestsPizza: XCTestCase {
    
    /// Test that the pizza name is actually "Awesome".
    func testPizzaNameIsAwesome() {
        
        // Arrange
        let expected = "Awesome";
        let pizza = Pizza(name: "Awesome", family: Family.BLANCHE)
        
        // Act
        let actual = pizza.name;
        
        // Assert
        XCTAssertEqual(expected, actual)
    }
    
    /// Test that pizza name is not "Awesome".
    func testPizzaNameIsNotAwesome() {
        
        // Arrange
        let notExpected = "Awesome";
        let pizza = Pizza(name: "I'm not awesome", family: Family.BLANCHE)
        
        // Act
        let actual = pizza.name;
        
        // Assert
        XCTAssertNotEqual(notExpected, actual)
    }
    
    /// Test that pizza family is actually "BLANCHE".
    func testPizzaFamilyIsBlanche() {
        
        // Arrange
        let expected = Family.BLANCHE
        let pizza = Pizza(name: "Awesome", family: Family.BLANCHE)
        
        // Act
        let actual = pizza.family;
        
        // Assert
        XCTAssertEqual(expected, actual);
    }
    
    /// Test that pizza family is NOT actually "BLANCHE".
    func testPizzaFamilyIsNotBlanche() {
        
        // Arrange
        let notExpected = Family.BLANCHE
        let pizza = Pizza(name: "Awesome", family: Family.ROUGE)
        
        // Act
        let actual = pizza.family;
        
        // Assert
        XCTAssertNotEqual(notExpected, actual);
    }
}
