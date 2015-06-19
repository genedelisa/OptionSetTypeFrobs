//
//  Hoagie1.swift
//  OptionSetTypeFrobs
//
//  Created by Gene De Lisa on 6/16/15.
//  Copyright © 2015 Gene De Lisa. All rights reserved.
//

import Foundation

struct Hoagie1 {
    
    var name = "Hoagie"
    
    var ingredients:HoagieIngredients1
    
    init() {

        ingredients = .Lettuce | .Tomatoes
        
        if hasLettuce() {
            print("has lettuce")
        }

    }
    
    mutating func addOnions() {
        ingredients |= .Onions
    }

    mutating func regular() {
        ingredients |= .All
    }
    
    mutating func plain() {
        ingredients = .None
    }
    
    func hasLettuce() -> Bool {
        return ingredients & HoagieIngredients1.Lettuce != .None
    }

    func hasOnions() -> Bool {
        return ingredients & .Onions != .None
    }
    
    func hasIngredients() -> Bool {
        return ingredients != .None
    }
}


struct HoagieIngredients1 : RawOptionSetType {
    private var value: UInt = 0
    init(_ value: UInt) { self.value = value }
    init(rawValue value: UInt) { self.value = value }
    init(nilLiteral: ()) { self.value = 0 }
    static var allZeros: HoagieIngredients1 { return self(0) }
    var rawValue: UInt { return self.value }
    
    static var None: HoagieIngredients1 { return self(0) }
    static var Lettuce: HoagieIngredients1 { return self(1 << 0) }
    static var Tomatoes: HoagieIngredients1 { return self(1 << 1) }
    static var Onions: HoagieIngredients1 { return self(1 << 2) }
    static var Oil: HoagieIngredients1 { return self(1 << 3) }
    static var Vinegar: HoagieIngredients1 { return self(1 << 4) }
    static var Peppers: HoagieIngredients1 { return self(1 << 5) }
    static var Pickles: HoagieIngredients1 { return self(1 << 6) }
    static var Salt: HoagieIngredients1 { return self(1 << 7) }
    static var Pepper: HoagieIngredients1 { return self(1 << 8) }
    static var Oregano: HoagieIngredients1 { return self(1 << 9) }
    static var All: HoagieIngredients1 { return self(0b111) }

}
