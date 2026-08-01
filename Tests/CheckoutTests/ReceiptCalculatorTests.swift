import XCTest
@testable import Checkout

final class ReceiptCalculatorTests: XCTestCase {
    func testSingleOrangeReceiptIncludesUnitPriceAndTotal() {
        var cart = Cart()
        cart.add("🍊")

        let receipt = ReceiptCalculator().receipt(for: cart)

        XCTAssertEqual(receipt, "🍊 x1 20\nИтого 20")
    }
}
