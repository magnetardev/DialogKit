import XCTest
@testable import DialogKit

final class DialogKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DialogKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
