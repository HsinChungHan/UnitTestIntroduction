//
//  Customer.swift
//  UnitTestIntroduction
//
//  Created by ChungHan Hsin on 2021/9/1.
//

import Foundation

class Customer {
    static let shared = Customer()
    private init() {}
    
    var wantedList = [Product]()
    var totalPrice: Float {
        return wantedList.reduce(0) { (totalPrice, product) in
            totalPrice + product.price
        }
    }
    
    func add(product: Product) {
        wantedList.append(product)
    }
}
