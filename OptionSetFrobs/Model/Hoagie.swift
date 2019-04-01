//
// OptionSetTypeFrobs
// Hoagie.swift
//
// last build: macOS 10.13, Swift 4.0
//
// Created by Gene De Lisa on 4/1/19.
 
//  Copyright ©(c) 2019 Gene De Lisa. All rights reserved.
//
//  This source code is licensed under the MIT license found in the
//  LICENSE file in the root directory of this source tree.
//
//  In addition:
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are met:
//
//  1. Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//
//  2. Redistributions in binary form must reproduce the above copyright
//  notice, this list of conditions and the following disclaimer in the
//  documentation and/or other materials provided with the distribution.
//
//  3. Neither the name of the copyright holder nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to
//  deal in the Software without restriction, including without limitation the
//  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
//  sell copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
//  IN THE SOFTWARE.
//
    
    

import Foundation

@available(iOS 9, *)

public struct Hoagie {
    
    var name = "Hoagie"
    
    var ingredients: HoagieIngredients
    
    public init() {
        ingredients = []
    }
    
    public mutating func addIngredients(_ jawns: HoagieIngredients) {
        ingredients.formUnion(jawns)
    }
    
    public mutating func wit() {
        ingredients.insert(.onions)
    }
    
    public mutating func witout() {
        ingredients.remove(.onions)
    }
    
    public mutating func regular() {
        ingredients.formUnion(.theWorks)
    }
    
    public mutating func plain() {
        ingredients.remove(.theWorks) // theWorks is everything
    }
    
    public func hasLettuce() -> Bool {
        return ingredients.contains(.lettuce)
    }
    
    public func hasOnions() -> Bool {
        return ingredients.contains(.onions)
    }
    
    public func isPlain() -> Bool {
        return !ingredients.isEmpty
    }
    
}


public struct HoagieIngredients : OptionSet {
    public let rawValue: UInt

    public init(rawValue: HoagieIngredients.RawValue) {
        self.rawValue = rawValue
    }
    
    static let none     = HoagieIngredients(rawValue: 0)
    static let lettuce  = HoagieIngredients(rawValue: 1)
    static let tomatoes = HoagieIngredients(rawValue: 1 << 1)
    static let onions   = HoagieIngredients(rawValue: 1 << 2)
    static let oil      = HoagieIngredients(rawValue: 1 << 3)
    static let vinegar  = HoagieIngredients(rawValue: 1 << 4)
    static let peppers  = HoagieIngredients(rawValue: 1 << 5)
    static let pickles  = HoagieIngredients(rawValue: 1 << 6)
    static let salt     = HoagieIngredients(rawValue: 1 << 7)
    static let pepper   = HoagieIngredients(rawValue: 1 << 8)
    static let oregano  = HoagieIngredients(rawValue: 1 << 9)
    
    
    static let theWorks: HoagieIngredients = [.lettuce, .tomatoes, .onions, .oil, .vinegar, .pickles, .peppers, .salt, .pepper, .oregano]
    
    static let picklesAndPeppers: HoagieIngredients = [.pickles, .peppers]
    
    static let oilAndVinegar: HoagieIngredients = [.oil, .vinegar]
}
