import XCTest
@testable import Checkout

final class ReceiptCalculatorTests: XCTestCase {
    func testSingleOrangeReceiptIncludesUnitPriceAndTotal() {
        var cart = Cart()
        cart.add("🍊")

        let receipt = ReceiptCalculator().receipt(for: cart)

        XCTAssertEqual(receipt, "🍊 x1 20\nИтого 20")
    }

    func testTwoApplesReceiptIncludesSpecialPriceAndTotal() {
        var cart = Cart()
        cart.add("🍎")
        cart.add("🍎")

        let receipt = ReceiptCalculator().receipt(for: cart)

        XCTAssertEqual(receipt, "🍎 x2 (2 за 90) 90\nИтого 90")
    }
}
