import XCTest
@testable import Checkout

final class CartTests: XCTestCase {
    func testQuantityOfAddedAppleIsOne() {
        var cart = Cart()

        cart.add("🍎")

        XCTAssertEqual(cart.quantity(of: "🍎"), 1)
    }

    func testQuantityOfAddedBananaIsOne() {
        var cart = Cart()

        cart.add("🍌")

        XCTAssertEqual(cart.quantity(of: "🍌"), 1)
    }
}
