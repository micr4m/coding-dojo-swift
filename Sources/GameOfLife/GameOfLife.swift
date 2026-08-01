/// A coordinate on the Game of Life grid.
public struct Cell: Hashable {
    public let x: Int
    public let y: Int

    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

public struct GameOfLife {
    public init() {}

    /// Returns the next generation for an empty world.
    ///
    /// Add the remaining Game of Life rules incrementally during the dojo.
    public func nextGeneration(of liveCells: Set<Cell>) -> Set<Cell> {
        []
    }
}
