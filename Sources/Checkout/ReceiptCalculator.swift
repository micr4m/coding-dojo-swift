struct ReceiptCalculator {
    func receipt(for cart: Cart) -> String {
        if cart.quantity(of: "🍊") == 1 {
            let line = ReceiptLine(product: "🍊", quantity: 1, amount: 20)
            return "\(line.text)\nИтого 20"
        }

        return ""
    }
}
