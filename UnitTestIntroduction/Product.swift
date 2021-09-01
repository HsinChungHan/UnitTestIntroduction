//
//  Production.swift
//  UnitTestIntroduction
//
//  Created by ChungHan Hsin on 2021/9/1.
//

import Foundation

struct Product {
    let name: String
    var price: Float
}

extension Product {
    mutating func apply(_ coupon: Coupon) {
        let multiplier = 1 - (coupon.discount / 100)
        price *= multiplier
    }
}
