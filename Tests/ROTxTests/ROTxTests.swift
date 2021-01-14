import XCTest
@testable import ROTx

final class ROTxTests: XCTestCase {
    func testROT13() {
        XCTAssertEqual(
            "abcdefghijklmnopqrstuvwxyz".rot13(),
            "nopqrstuvwxyzabcdefghijklm"
        )
        
        XCTAssertEqual(
            "nopqrstuvwxyzabcdefghijklm".rot13(),
            "abcdefghijklmnopqrstuvwxyz"
        )
    }
    
    func testShifted_inc() {
        XCTAssertEqual(
            "abcdefghijklmnopqrstuvwxyz".shifted(by: 1),
            "bcdefghijklmnopqrstuvwxyza"
        )
    }
    
    func testShifted_none() {
        XCTAssertEqual(
            "abcdefghijklmnopqrstuvwxyz".shifted(by: 0),
            "abcdefghijklmnopqrstuvwxyz"
        )
    }
    
    func testShifted_dec() {
        XCTAssertEqual(
            "abcdefghijklmnopqrstuvwxyz".shifted(by: -1),
            "zabcdefghijklmnopqrstuvwxy"
        )
    }
    
    static var allTests = [
        ("testROT13", testROT13),
        ("testShifted_inc", testShifted_inc),
        ("testShifted_none", testShifted_none),
        ("testShifted_dec", testShifted_dec),
    ]
}
