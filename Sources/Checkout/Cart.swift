struct Cart {
    private var appleQuantity = 0
    private var bananaQuantity = 0
    private var orangeQuantity = 0

    mutating func add(_ product: String) {
        if product == "🍎" {
            appleQuantity += 1
        }

        if product == "🍌" {
            bananaQuantity += 1
        }

        if product == "🍊" {
            orangeQuantity += 1
        }
    }

    func quantity(of product: String) -> Int {
        if product == "🍎" {
            return appleQuantity
        }

        if product == "🍌" {
            return bananaQuantity
        }

        if product == "🍊" {
            return orangeQuantity
        }

        return 0
    }
}
