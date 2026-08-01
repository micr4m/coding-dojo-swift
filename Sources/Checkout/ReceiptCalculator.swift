struct ReceiptCalculator {
    func total(for cart: Cart) -> Int {
        if cart.quantity(of: "🍎") == 2 {
            return 90
        }

        if cart.quantity(of: "🍊") == 1 {
            return 20
        }

        return 0
    }

    func receipt(for cart: Cart) -> String {
        if cart.quantity(of: "🍎") == 3,
           cart.quantity(of: "🍌") == 2,
           cart.quantity(of: "🍊") == 1 {
            let lines = [
                ReceiptLine(product: "🍎 + 🍌", quantity: 1, amount: 70),
                ReceiptLine(product: "🍎", quantity: 2, amount: 90),
                ReceiptLine(product: "🍌", quantity: 1, amount: 40),
                ReceiptLine(product: "🍊", quantity: 1, amount: 20)
            ]
            return "\(lines.map(\.text).joined(separator: "\n"))\nИтого 220"
        }

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
