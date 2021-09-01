//
//  ProductTests.swift
//  UnitTestIntroductionTests
//
//  Created by ChungHan Hsin on 2021/9/1.
// 

import XCTest

// 將 product target 的 code import 進來，如此我們才可以在這個 file 存取到 Product 和 Coupon
@testable import UnitTestIntroduction

class ProductTests: XCTestCase {
    
    /// 想要測試 Product 中的 apply()
    func testProductApplyingCoupon1() {
        // Given: 把等等要測的 Product init 並賦值 name = Book, price = 200
        // Coupon init, 並做賦值 30 的動作
        var product = Product(name: "Book", price: 200)
        let coupon = Coupon(discount: 30)
        
        // When: 當 product call apply 的 function時
        product.apply(coupon)
        
        // Then: 我預期我的 product price 將會是 140
        XCTAssertEqual(product.price, 140)
    }
    
    func testProductApplyingCoupon2() {
        // Given
        var product = Product(name: "Apple", price: 100)
        let coupon = Coupon(discount: 10)
        
        // When
        product.apply(coupon)
        
        // Then
        XCTAssertEqual(product.price, 90)
    }
}
