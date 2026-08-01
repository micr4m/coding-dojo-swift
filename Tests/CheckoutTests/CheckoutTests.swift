import XCTest
@testable import Checkout

final class CheckoutTests: XCTestCase {
    func testNewCheckoutHasZeroTotal() {
        XCTAssertEqual(Checkout().total, 0)
    }

    func testScanningOrangeMakesReceiptWithUnitPriceAndTotal() {
        var checkout = Checkout()

        checkout.scan("🍊")

        XCTAssertEqual(checkout.receipt, "🍊 x1 20\nИтого 20")
    }

    func testScanningOrangeHasUnitPriceTotal() {
        var checkout = Checkout()

        checkout.scan("🍊")

        XCTAssertEqual(checkout.total, 20)
    }
}
