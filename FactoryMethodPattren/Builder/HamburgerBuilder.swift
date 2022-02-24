//
//  RequestBuilder.swift
//  FactoryMethodPattren
//
//  Created by Gohar Vardanyan on 25.02.22.
//

import Foundation
 class HamburgerBuilder {
    
     private(set) var meat: Meat = .beef
     private(set) var sauces: Sauces = []
     private(set) var toppings: Toppings = []
    
     func addSauces(_ sauce: Sauces) {
        sauces.insert(sauce)
    }
     func removeSauces(_ sauce: Sauces) {
        sauces.remove(sauce)
    }
     func addToppings(_ topping: Toppings) {
        toppings.insert(topping)
    }
     func removeToppings(_ topping: Toppings) {
        toppings.remove(topping)
    }
     func setMeat(_ meat: Meat) {
        self.meat = meat
    }
    
     func build() -> Hamburger {
        return Hamburger(meat: meat,
                         sauce: sauces,
                         toppings: toppings)
    }
 }

