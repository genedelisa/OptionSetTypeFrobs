//
// OptionSetTypeFrobs
// OptionSetFrobsTests.swift
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
    
    

import XCTest
@testable import OptionSetFrobs

class OptionSetFrobsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testShouldHave() {
        
        
        let ingredients: HoagieIngredients = [.lettuce, .tomatoes]
        
        XCTAssertTrue(ingredients.contains(.lettuce), "has lettuce")
        
        XCTAssertFalse(ingredients.contains(.oil), "does not contain oil")
        
        XCTAssertFalse(HoagieIngredients.onions.contains( .tomatoes ), "onions contains tomatoes")
        
        XCTAssertTrue(HoagieIngredients.theWorks.contains( .tomatoes ), "the works contains tomatoes")
        
        XCTAssertTrue(HoagieIngredients.theWorks.contains( .tomatoes ), "the works contains tomatoes")
        
    }
    
    func testHoagieShouldHave() {
        
        var rocky = Hoagie()
        XCTAssertFalse(rocky.isPlain(), "has no ingredients")

        rocky.wit()
        XCTAssertTrue(rocky.isPlain(), "has ingredients")
        
        XCTAssertFalse(rocky.hasLettuce(), "has no lettuce")

        rocky.regular()
        
        XCTAssertTrue(rocky.hasLettuce(), "has lettuce")
        
        rocky.wit()
        XCTAssertTrue(rocky.hasOnions(), "has onions")

        rocky.witout()
        XCTAssertFalse(rocky.hasOnions(), "does not have onions")
    }


}
