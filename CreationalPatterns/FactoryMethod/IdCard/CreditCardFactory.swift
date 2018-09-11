// ˅

// ˄

public class CreditCardFactory: Factory {
    // ˅
    
    // ˄

    private var cardOwners: [String] = []
    // ˅
    
    // ˄

    public override func createProduct(owner: String) -> Product {
        // ˅
        return CreditCard(owner: owner)
        // ˄
    }

    public override func registerProduct(product: Product) {
        // ˅
        cardOwners.append((product as! CreditCard).owner)
        // ˄
    }

    public func getCardOwner() -> [String] {
        // ˅
        return cardOwners
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
