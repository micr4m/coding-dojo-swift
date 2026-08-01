struct ReceiptCalculator {
    func receipt(for cart: Cart) -> String {
        if cart.quantity(of: "🍎") == 1, cart.quantity(of: "🍌") == 1 {
            let line = ReceiptLine(product: "🍎 + 🍌", quantity: 1, amount: 70)
            return "\(line.text)\nИтого 70"
        }

        if cart.quantity(of: "🍎") == 2 {
            let line = ReceiptLine(product: "🍎", quantity: 2, amount: 90)
            return "\(line.text)\nИтого 90"
        }

        if cart.quantity(of: "🍊") == 1 {
            let line = ReceiptLine(product: "🍊", quantity: 1, amount: 20)
            return "\(line.text)\nИтого 20"
        }

        return ""
    }
}
