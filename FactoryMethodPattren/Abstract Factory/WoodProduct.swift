//
//  IronProduct.swift
//  FactoryMethodPattren
//
//  Created by Gohar Vardanyan on 22.02.22.
//

import Foundation


protocol ProducrtB {
    func description()
    func description(collaborator: ProductA)
}

final class ProductB1: ProducrtB {
    func description() {
        print("This is ProductB1")
    }
    
func description(collaborator: ProductA) {
    print("This is ProductB1 collaborated with \(collaborator.description())")

    }
}

final class ProductB2: ProducrtB {
    func description() {
        print("This  is ProductB2")
    }
    
    func description(collaborator: ProductA) {
        print("This is ProductB2 collaborated with \(collaborator.description())")
    }
}
