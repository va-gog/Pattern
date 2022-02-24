//
//  Client.swift
//  FactoryMethodPattren
//
//  Created by Gohar Vardanyan on 23.02.22.
//

import Foundation

class Client {
    static func someClientCode(factory: Creator) {
        let productA = factory.createProductA()
        let productB = factory.createProductB()

        print(productB.description())
        print(productB.description(collaborator: productA))
    }
}
