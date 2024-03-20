//
//  LittleLemonDinnerMenu_MetaTests.swift
//  LittleLemonDinnerMenu-MetaTests
//
//  Created by Şükrü Şimşek on 20.03.2024.
//

import XCTest
@testable import LittleLemonDinnerMenu_Meta

final class LittleLemonDinnerMenu_MetaTests: XCTestCase {
    let viewModel = MenuViewViewModel()
    
    func test_checkFoodTitle() {
        let foodTitle = viewModel.foods[0]
        XCTAssertEqual(foodTitle.title, "Food 4")
    }
    func test_checkIngredient() {
        let foodIngredient = viewModel.foods[0]
        XCTAssertEqual(foodIngredient.ingredient, [.tomatoSauce, .carrot, .pasta])
    }
}
