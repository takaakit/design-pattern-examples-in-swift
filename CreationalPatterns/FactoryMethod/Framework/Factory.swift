// ˅
import Foundation

// ˄

public class Factory {
    // ˅
    
    // ˄

    public func create(owner: String) -> Product {
        // ˅
        // Write pre-creation code here, if any.

        let product = createProduct(owner: owner)

        // Write post-creation code here, if any.
        
        return product
        // ˄
    }

    public func createProduct(owner: String) -> Product {
        // ˅
        fatalError("An abstract method has been executed.")
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
