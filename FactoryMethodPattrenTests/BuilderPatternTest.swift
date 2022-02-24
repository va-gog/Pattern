//
//  BuilderPatternTest.swift
//  FactoryMethodPattrenTests
//
//  Created by Gohar Vardanyan on 25.02.22.
//

import XCTest
@testable import FactoryMethodPattren

class BuilderPatternTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let burgerShop = BurgerShop()
        let hamburgerBuilder = HamburgerBuilder()

        let cheeseBurger = burgerShop.createCheeseBurger(using: hamburgerBuilder)
        print(cheeseBurger.description)

        let vegetarianBurger = burgerShop.createVegetarianBurger(using: hamburgerBuilder)
        print(vegetarianBurger.description)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
