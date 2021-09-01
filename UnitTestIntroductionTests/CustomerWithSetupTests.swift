//
//  CustomerWithSetupTests.swift
//  UnitTestIntroductionTests
//
//  Created by ChungHan Hsin on 2021/9/1.
//

import XCTest

@testable import UnitTestIntroduction

class CustomerWithSetupTests: XCTestCase {
    // 這邊取得 customer 的 shared intace object
    private var customer = Customer.shared
    
    override func setUp() {
        super.setUp()
        // 每一次開始執行新的 test case 的都會去 clear singleton object
        customer.wantedList.removeAll()
    }
    
    func testCustomerTotalPrice1() {
        XCTAssertEqual(customer.totalPrice, 0)
        
        // Given
        let product1 = Product(name: "Book1", price: 200)
        let product2 = Product(name: "Book2", price: 300)
        
        // When
        customer.add(product: product1)
        customer.add(product: product2)
        
        // Then
        XCTAssertEqual(customer.totalPrice, 200 + 300)
    }
    
    func testCustomerTotalPrice2() {
        XCTAssertEqual(customer.totalPrice, 0)
        
        // Given
        let product1 = Product(name: "Book2", price: 400)
        let product2 = Product(name: "Book3", price: 500)
        
        // When
        customer.add(product: product1)
        customer.add(product: product2)
        
        // Then
        XCTAssertEqual(customer.totalPrice, 400 + 500)
    }
    
    override func tearDown() {
        customer.wantedList.removeAll()
        super.tearDown()
    }
}
