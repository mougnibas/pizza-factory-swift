import Foundation

/// Define the pizza service (`protocol` in Swift).
public protocol  IPizzaService {
    
    /// Get all pizzas.
    ///
    /// This method will return every know pizza in the system.
    ///
    /// - Returns : An array of pizzas, or an empty array.
    func getAllPizza() -> [Pizza]
}
