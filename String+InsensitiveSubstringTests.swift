//
//  String+InsensitiveSubstringTests.swift
//  String+ExtensionsTest.swift
//
//  Created by Serge Mbamba on 2018/04/16.
//  Copyright © 2016 Serge Mbamba. All rights reserved.
//

func testThatCaseInsenstiveSubstringsAreCheckedCorrectly() {
    XCTAssertFalse("testIns".hasCaseInsenstivePrefix(string: "ere"))
    XCTAssertFalse("testIns".hasCaseInsenstivePrefix(string: "tst"))
    XCTAssertTrue("testIns".hasCaseInsenstivePrefix(string: "Test"))
    XCTAssertTrue("testIns".hasCaseInsenstivePrefix(string: "TEST"))
    XCTAssertTrue("TESTIns".hasCaseInsenstivePrefix(string: "tEst"))
    
    XCTAssertFalse("testIns".hasCaseInsenstiveSuffix(string: "iss"))
    XCTAssertFalse("testIns".hasCaseInsenstiveSuffix(string: "Isn"))
    XCTAssertTrue("testIns".hasCaseInsenstiveSuffix(string: "TINS"))
    XCTAssertTrue("testIns".hasCaseInsenstiveSuffix(string: "ins"))
    XCTAssertTrue("TESTIns".hasCaseInsenstiveSuffix(string: "estINS"))
    
    XCTAssertTrue("téstčeska".containsDiacriticInsentive(string: "tce"))
    XCTAssertTrue("téstčeska".containsDiacriticInsentive(string: "est"))
    XCTAssertFalse("téstčeska".containsDiacriticInsentive(string: "Isn"))
}
