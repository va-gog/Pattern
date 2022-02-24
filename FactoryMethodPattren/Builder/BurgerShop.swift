//
//  BurgerShop.swift
//  FactoryMethodPattren
//
//  Created by Gohar Vardanyan on 25.02.22.
//

import Foundation

class BurgerShop {
    func createCheeseBurger(using builder: HamburgerBuilder) -> Hamburger {
        builder.setMeat(.beef)
        builder.addToppings([.cheese, .lettuce, .tomatoes])
        builder.addSauces([.barbeque, .ketchup, .mayonnaise])
        return builder.build()
    }
    
    func createVegetarianBurger(using builder: HamburgerBuilder) -> Hamburger {
        builder.setMeat(.tofu)
        builder.addSauces([.mayonnaise, .mustard])
        builder.addToppings([.lettuce, .tomatoes, .pickles])
        return builder.build()
    }
}
