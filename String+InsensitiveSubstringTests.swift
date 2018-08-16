//
//  String+InsensitiveSubstringTests.swift
//  String+ExtensionsTest.swift
//
//  Created by Serge Mbamba on 2018/04/16.
//  Copyright © 2016 Serge Mbamba. All rights reserved.
//

func testThatCaseInsenstiveSubstringsAreCheckedCorrectly() {
    XCTAssertFalse("testIns".hasInsenstivePrefix(string: "ere"))
    XCTAssertFalse("testIns".hasInsenstivePrefix(string: "tst"))
    XCTAssertTrue("testIns".hasInsenstivePrefix(string: "Test"))
    XCTAssertTrue("testIns".hasInsenstivePrefix(string: "TEST"))
    XCTAssertTrue("TESTIns".hasInsenstivePrefix(string: "tEst"))
    
    XCTAssertFalse("testIns".hasInsenstiveSuffix(string: "iss"))
    XCTAssertFalse("testIns".hasInsenstiveSuffix(string: "Isn"))
    XCTAssertTrue("testIns".hasInsenstiveSuffix(string: "TINS"))
    XCTAssertTrue("testIns".hasInsenstiveSuffix(string: "ins"))
    XCTAssertTrue("TESTIns".hasInsenstiveSuffix(string: "estINS"))
    
    XCTAssertTrue("téstčeska".containsDiacriticInsentive(string: "tce"))
    XCTAssertTrue("téstčeska".containsDiacriticInsentive(string: "est"))
    XCTAssertFalse("téstčeska".containsDiacriticInsentive(string: "Isn"))
}
