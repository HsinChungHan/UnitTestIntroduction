//
//  ShoppingCart.swift
//  UnitTestIntroduction
//
//  Created by ChungHan Hsin on 2021/9/1.
//

import Foundation

struct ShoppingCart {
    var products = [Product]()
    var totalPrice: Float {
        return products.reduce(0) { (totalPrice, product) in
            totalPrice + product.price
        }
    }
    
    mutating func add(product: Product) {
        products.append(product)
    }
}
