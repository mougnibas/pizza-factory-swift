// The Swift Programming Language
// https://docs.swift.org/swift-book
// 
// Swift Argument Parser
// https://swiftpackageindex.com/apple/swift-argument-parser/documentation

import ArgumentParser
import Pizza_Impl

enum Action : String, EnumerableFlag {
    case list
}

@main
struct Pizza_CLI: ParsableCommand {
    
    @Flag(help: "The action to do")
    var action: Action = .list
    
    mutating func run() throws {
        
        print("Hello, world!")
        
        // If the user want to print all pizzas (default behavior), do it.
        if (action == .list) {
            
            print("Getting all pizzas ...")
            let pizzas = PizzaService().getAllPizza()
            print("Getting all pizzas done.")
            print()
            
            print("Outputing all pizzas ...")
            for pizza in pizzas {
                print(pizza)
            }
            print("Outputing all pizzas done.")
            
        }
    }
}
