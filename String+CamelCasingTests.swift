//
//  String+CamelCasingTests.swift
//  String+ExtensionsTest.swift
//
//  Created by Serge Mbamba on 2016/04/26.
//  Copyright © 2016 Serge Mbamba. All rights reserved.
//

import XCTest
class String_CamelCasingTests: XCTestCase {
    
    func testThatStringsAreCamelCasedCorrectly() {
        let lowerCaseString = "alea jacta est"
        let upperCaseString = "PIN"
        let mixedCaseString_1 = "MIT Licence"
        let mixedCaseString_2 = "red LED"
        
        XCTAssertEqual(lowerCaseString.camelCased(), "Alea Jacta Est")
        XCTAssertEqual(lowerCaseString.camelCased(mode: .lower), "aLEA jACTA eST")
        
        XCTAssertEqual(upperCaseString.camelCased(), "Pin")
        XCTAssertEqual(upperCaseString.camelCased(mode: .lower), "pIN")
        
        XCTAssertEqual(mixedCaseString_1.camelCased(), "Mit Licence")
        XCTAssertEqual(mixedCaseString_1.camelCased(mode: .lower), "mIT lICENCE")
        
        XCTAssertEqual(mixedCaseString_2.camelCased(), "Red Led")
        XCTAssertEqual(mixedCaseString_2.camelCased(mode: .lower), "rED lED")
    }
}

