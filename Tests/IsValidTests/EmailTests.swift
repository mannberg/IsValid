import XCTest
@testable import IsValid

final class EmailTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertTrue(IsValid.email("joe@south.com"))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
