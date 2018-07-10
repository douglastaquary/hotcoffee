//
//  Order.swift
//  HotCoffee
//
//  Created by Mohammad Azam on 7/7/18.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import Foundation

enum CoffeeSize :Int {
    case small = 0
    case medium = 1
    case large = 2
}

class Order {
    
    var coffee :Coffee
    var total :Double
    var size :CoffeeSize
    
    init(coffee :Coffee, total :Double, size :CoffeeSize = .medium) {
        self.coffee = coffee
        self.total = total
        self.size = size 
    }
}

extension Order {
    
    func toDictionary() -> [String:Any] {
        return ["name":self.coffee.name, "imageURL": self.coffee.imageURL,
                "total":self.total, "coffeeSize":self.size.rawValue]
    }
    
    
}


