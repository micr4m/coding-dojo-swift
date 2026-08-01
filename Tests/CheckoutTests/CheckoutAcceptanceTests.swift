import XCTest
@testable import Checkout

final class CheckoutAcceptanceTests: XCTestCase {
    func testReceiptShowsComboSpecialPriceAndUnitPrices() {
        var checkout = Checkout()

        checkout.scan("🍎")
        checkout.scan("🍎")
        checkout.scan("🍎")
        checkout.scan("🍌")
        checkout.scan("🍌")
        checkout.scan("🍊")

        XCTAssertEqual(
            checkout.receipt,
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
