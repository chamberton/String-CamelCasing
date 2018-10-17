
func testStringHashing() {
    let scalarString = "hello"
    XCTAssertEqual(scalarString.djb2Hash, 210714636441)
    XCTAssertEqual(scalarString.sdbmHash, 7416051667693574450)
}
