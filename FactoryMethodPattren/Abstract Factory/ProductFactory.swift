//
//  ProductFactory.swift
//  FactoryMethodPattren
//
//  Created by Gohar Vardanyan on 22.02.22.
//

import Foundation

protocol Creator {
    func createProductA() -> ProductA
    func createProductB() -> ProducrtB
}

final class ProductCreator1: Creator {
    
    func createProductA() -> ProductA {
        return ProductA1()
    }

    
    func createProductB() -> ProducrtB {
        return ProductB1()
    }
}

final class ProductCreator2: Creator {
    
    func createProductA() -> ProductA {
        return ProductA2()
    }

    
    func createProductB() -> ProducrtB {
        return ProductB2()
    }
}
