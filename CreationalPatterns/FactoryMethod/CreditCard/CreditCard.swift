// ˅

// ˄

public class CreditCard: Product {
    // ˅
    
    // ˄

    public let owner: String

    public init(owner: String) {
        // ˅
        self.owner = owner
        print("Make \(owner)'s card.")
        // ˄
    }

    public func use() {
        // ˅
        print("Use \(owner)'s card.")
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
