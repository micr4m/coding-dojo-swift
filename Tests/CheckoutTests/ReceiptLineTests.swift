import XCTest
@testable import Checkout

final class ReceiptLineTests: XCTestCase {
    func testSingleOrangeUsesUnitPriceFormat() {
        let line = ReceiptLine(product: "🍊", quantity: 1, amount: 20)

        XCTAssertEqual(line.text, "🍊 x1 20")
    }

    func testTwoApplesUsesSpecialPriceFormat() {
        let line = ReceiptLine(product: "🍎", quantity: 2, amount: 90)

        XCTAssertEqual(line.text, "🍎 x2 (2 за 90) 90")
    }
}
