struct Cart {
    private var appleQuantity = 0
    private var bananaQuantity = 0

    mutating func add(_ product: String) {
        if product == "🍎" {
            appleQuantity += 1
        }

        if product == "🍌" {
            bananaQuantity += 1
        }
    }

    func quantity(of product: String) -> Int {
        if product == "🍎" {
            return appleQuantity
        }

        if product == "🍌" {
            return bananaQuantity
        }

        return 0
    }
}
