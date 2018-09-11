// ˅

// ˄

public class Memento {
    // ˅

    // ˄

    // Money
    public var money: Int
    // ˅

    // ˄

    // Desserts
    public var desserts: [String]
    // ˅

    // ˄

    public init(money: Int) {
        // ˅
        self.money = money
        self.desserts = [String]()
        // ˄
    }

    // Add a dessert
    public func addDessert(dessert: String) {
        // ˅
        desserts.append(dessert)
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
