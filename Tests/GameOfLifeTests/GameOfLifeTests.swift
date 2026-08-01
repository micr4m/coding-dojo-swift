import XCTest
@testable import GameOfLife

final class GameOfLifeTests: XCTestCase {
    func testEmptyWorldStaysEmpty() {
        let game = GameOfLife()

        XCTAssertEqual(game.nextGeneration(of: []), [])
    }
}
