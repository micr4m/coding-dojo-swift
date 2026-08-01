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

    func testAppleAndBananaReceiptIncludesComboPriceAndTotal() {
        var cart = Cart()
        cart.add("🍎")
        cart.add("🍌")

        let receipt = ReceiptCalculator().receipt(for: cart)

        XCTAssertEqual(receipt, "🍎 + 🍌 (комбо за 70) 70\nИтого 70")
    }

    func testReceiptAppliesComboThenSpecialPriceAndUnitPrices() {
        var cart = Cart()
        cart.add("🍎")
        cart.add("🍎")
        cart.add("🍎")
        cart.add("🍌")
        cart.add("🍌")
        cart.add("🍊")

        let receipt = ReceiptCalculator().receipt(for: cart)

        XCTAssertEqual(
            receipt,
            """
            🍎 + 🍌 (комбо за 70) 70
            🍎 x2 (2 за 90) 90
            🍌 x1 40
            🍊 x1 20
            Итого 220
            """
        )
    }
}
