import XCTest
@testable import Checkout

final class CheckoutTests: XCTestCase {
    func testNewCheckoutHasZeroTotal() {
        XCTAssertEqual(Checkout().total, 0)
    }
}
