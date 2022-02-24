//
//  Prodact.swift
//  FactoryMethodPattren
//
//  Created by Gohar Vardanyan on 22.02.22.
//

import Foundation

protocol ProductA {
    func description()
}

final class ProductA1: ProductA {
    func description() {
        print("this is ProductA1")
    }

}

final class ProductA2: ProductA {
    func description() {
        print("this is ProductA2")
    }
}
