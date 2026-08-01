public struct Checkout {
    private var cart = Cart()

    public init() {}

    public var total: Int {
        ReceiptCalculator().total(for: cart)
    }

    public var receipt: String {
        ReceiptCalculator().receipt(for: cart)
    }

    public mutating func scan(_ item: String) {
        cart.add(item)
    }
}
