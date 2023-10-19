import Foundation

/// A model representing a pizza.
///
/// Pizzas are delicious, even those with ananas on top.
public class Pizza {
    
    /// The pizza name.
    public let name : String
    
    /// The pizza family.
    public let family : Family
    
    /// Initialize a new pizza.
    ///
    /// - Parameters:
    ///   - name: The pizza name.
    ///   - family : The pizza family.
    public init(name: String, family: Family) {
        self.name = name
        self.family = family
    }
}
