//
//  ShoppingCartTests.swift
//  UnitTestIntroductionTests
//
//  Created by ChungHan Hsin on 2021/9/1.
//

import XCTest

@testable import UnitTestIntroduction

class ShoppingCartsTests: XCTestCase {
    // 針對 shoppingCart 我有兩個 test case，但我不想要在每個 test case 都宣告一次
    private var shoppingCart: ShoppingCart!
    
    override func setUp() {
        super.setUp()
        shoppingCart = ShoppingCart()
    }
    
    func testCalculatingTotalPrice() {
        XCTAssertEqual(shoppingCart.totalPrice, 0)
        
        // Given: init 並賦值兩個 product
        let product1 = Product(name: "Book1", price: 200)
        let product2 = Product(name: "Book2", price: 300)
        
        // When: 當這兩個 products 都加入到購物車後
        shoppingCart.add(product: product1)
        shoppingCart.add(product: product2)
        
        // Then: 預期整個購物車的價格為 200 + 300
        XCTAssertEqual(shoppingCart.totalPrice, 200 + 300)
    }
    
    func testCalculatingTotalPrice2() {
        XCTAssertEqual(shoppingCart.totalPrice, 0)
        
        // Given
        let product1 = Product(name: "Book2", price: 400)
        let product2 = Product(name: "Book3", price: 700)
        
        // When
        shoppingCart.add(product: product1)
        shoppingCart.add(product: product2)
        
        // Then
        XCTAssertEqual(shoppingCart.totalPrice, 400 + 700)
    }
    
    override func tearDown() {
        shoppingCart = nil
        super.tearDown()
        print("do tearDown")
    }
}
