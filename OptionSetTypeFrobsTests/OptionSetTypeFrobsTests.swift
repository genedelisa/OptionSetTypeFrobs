//
//  OptionSetTypeFrobsTests.swift
//  OptionSetTypeFrobsTests
//
//  Created by Gene De Lisa on 6/16/15.
//  Copyright © 2015 Gene De Lisa. All rights reserved.
//

import XCTest

@testable import OptionSetTypeFrobs

class OptionSetTypeFrobsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testShouldHave() {

        
        let ingredients:HoagieIngredients = [.Lettuce, .Tomatoes]
        
        XCTAssertTrue(ingredients.contains(.Lettuce), "has lettuce")

        XCTAssertFalse(ingredients.contains(.Oil), "does not contain oil")
        
        XCTAssertFalse(HoagieIngredients.Onions.contains( .Tomatoes ), "onions contains tomatoes")

        XCTAssertTrue(HoagieIngredients.TheWorks.contains( .Tomatoes ), "the works contains tomatoes")

    }
    

    
}
