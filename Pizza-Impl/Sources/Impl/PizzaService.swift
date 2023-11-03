import Foundation
import Pizza_Contract

/// An implementation of `IPizzaService` interface.
public struct PizzaService : IPizzaService {
    
    /// All known pizzas.
    private let pizzas : [Pizza]
    
    /// Initialize the service.
    init() {
        
        // Hard-coded "rouges" pizzas
        let rouges = [
            
            Pizza(name: "Reine", family: Family.ROUGE, ingredients: [
                "Origan",
                "Emmental",
                "Mozzarella",
                "Champignons de Paris",
                "Jambon"]),
            
            Pizza(name: "Raclette", family: Family.ROUGE, ingredients: [
                "Herbes de Provence",
                "Emmental",
                "Mozzarella",
                "Champignons de Paris",
                "Raclette"]),
            
            Pizza(name: "Poivrons", family: Family.ROUGE, ingredients: [
                "Herbes de Provence",
                "Emmental",
                "Mozzarella",
                "Oignons revenus",
                "Poivrons émincés revenus"]),
            
            Pizza(name: "Reblochon", family: Family.ROUGE, ingredients: [
                "Herbes de Provence",
                "Emmental",
                "Mozzarella",
                "Champignons de Paris",
                "Reblochon"])
        ]
        
        // Hard-coded "blanches" pizza
        let blanches = [
            
            Pizza(name: "Chorizo", family: Family.BLANCHE, ingredients: [
                "Origan",
                "Oignons revenus au miel",
                "Mozzarella",
                "Chorizo",
                "Noix"]),
            
            Pizza(name: "Trois fromages", family: Family.BLANCHE, ingredients: [
                "Origan",
                "Emmental",
                "Fourme d'Ambert",
                "Mozzarella"]),
            
            Pizza(name: "Lardons", family: Family.BLANCHE, ingredients: [
                "Origan",
                "Oignons revenus",
                "Lardons",
                "Fourme d'Ambert",
                "Emmental"]),
            
            Pizza(name: "Curry", family: Family.BLANCHE, ingredients: [
                "Origan",
                "Oignons revenus",
                "Emmental",
                "Poulet"])
        ]
        
        // Concatenate rouges and blanches.
        // This line make me so happy.
        self.pizzas = rouges + blanches
    }
    
    public func getAllPizza() -> [Pizza] {
        
        // Just return this static data
        return pizzas
    }
    
}
