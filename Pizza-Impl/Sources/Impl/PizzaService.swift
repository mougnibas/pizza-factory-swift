import Foundation
import Pizza_Contract

/// An implementation of `IPizzaService` interface.
public struct PizzaService : IPizzaService {
    
    public func getAllPizza() -> [Pizza] {
        
        // Just return this static data
        return [
            Pizza(name: "Totally", family: Family.BLANCHE),
            Pizza(name: "Awesome", family: Family.ROUGE),
        ]
    }
    
}
