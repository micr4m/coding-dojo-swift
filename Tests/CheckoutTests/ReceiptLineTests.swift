import XCTest
@testable import Checkout

final class ReceiptLineTests: XCTestCase {
    func testSingleOrangeUsesUnitPriceFormat() {
        let line = ReceiptLine(product: "🍊", quantity: 1, amount: 20)

        XCTAssertEqual(line.text, "🍊 x1 20")
    }
}
