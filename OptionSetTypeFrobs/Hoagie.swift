//
//  Hoagie.swift
//  OptionSetTypeFrobs
//
//  Created by Gene De Lisa on 6/16/15.
//  Copyright © 2015 Gene De Lisa. All rights reserved.
//

import Foundation

struct Hoagie {
    
    var name = "Hoagie"
    
    var ingredients:HoagieIngredients
    
    init() {
        ingredients = [.Lettuce, .Tomatoes]
        ingredients = .TheWorks

        if hasLettuce() {
            print("has lettuce")
        }
    }
    
    
    mutating func addOnions() {
        ingredients.insert(.Onions)
    }

    mutating func regular() {
        ingredients.unionInPlace(.TheWorks)
    }
    
    mutating func plain() {
        ingredients.subtractInPlace(.TheWorks)
    }
    
    func hasLettuce() -> Bool {
        return ingredients.contains(.Lettuce)
    }
    
    func hasIngredients() -> Bool {
        return !ingredients.isEmpty
    }
   
}

struct HoagieIngredients : OptionSetType {
    let rawValue: UInt
    static let None = HoagieIngredients(rawValue: 0)
    static let Lettuce = HoagieIngredients(rawValue: 1)
    static let Tomatoes = HoagieIngredients(rawValue: 2)
    static let Onions = HoagieIngredients(rawValue: 3)
    static let Oil = HoagieIngredients(rawValue: 4)
    static let Vinegar = HoagieIngredients(rawValue: 5)
    static let Peppers = HoagieIngredients(rawValue: 6)
    static let Pickles = HoagieIngredients(rawValue: 7)
    static let Salt = HoagieIngredients(rawValue: 8)
    static let Pepper = HoagieIngredients(rawValue: 9)
    static let Oregano = HoagieIngredients(rawValue: 10)

    static let TheWorks:HoagieIngredients = [.Lettuce, .Tomatoes, .Onions, .Oil, .Vinegar, .Pickles, .Peppers, .Salt, .Pepper, .Oregano]
    
    static let PicklesAndPeppers:HoagieIngredients = [.Pickles, .Peppers]
    
    static let OilAndVinegar:HoagieIngredients = [.Oil, .Vinegar]
}


