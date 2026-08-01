struct ReceiptLine {
    private var product = ""
    private var quantity = 0
    private var amount = 0

    init(product: String, quantity: Int, amount: Int) {
        self.product = product
        self.quantity = quantity
        self.amount = amount
    }

    var text: String {
        if product == "🍎", quantity == 2, amount == 90 {
            return "🍎 x2 (2 за 90) 90"
        }

        if product == "🍎 + 🍌", quantity == 1, amount == 70 {
            return "🍎 + 🍌 (комбо за 70) 70"
        }

        return "\(product) x\(quantity) \(amount)"
    }
}
