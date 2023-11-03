import Foundation

/// A model representing a pizza.
///
/// Pizzas are delicious, even those with ananas on top.
public class Pizza {
    
    /// The pizza name.
    public let name : String
    
    /// The pizza family.
    public let family : Family
    
    /// Ingredients on the pizza, excluding the daugh and the "base" (family).
    public let ingredients : [String]
    
    /// Initialize a new pizza.
    ///
    /// - Parameters:
    ///   - name: The pizza name.
    ///   - family : The pizza family.
    public init(name: String, family: Family, ingredients : [String]) {
        self.name = name
        self.family = family
        self.ingredients = ingredients
    }
}
