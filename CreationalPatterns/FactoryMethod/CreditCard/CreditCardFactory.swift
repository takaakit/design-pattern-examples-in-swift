// ˅

// ˄

public class CreditCardFactory: Factory {
    // ˅
    
    // ˄

    public override func createProduct(owner: String) -> Product {
        // ˅
        return CreditCard(owner: owner)
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
