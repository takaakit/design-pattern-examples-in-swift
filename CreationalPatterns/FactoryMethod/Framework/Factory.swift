// ˅
import Foundation

// ˄

public class Factory {
    // ˅
    
    // ˄

    public func create(owner: String) -> Product {
        // ˅
        // Write pre-creation code here.

        // Encapsulate the knowledge of which Product subclass to create and move this knowledge out of the framework.
        let product = createProduct(owner: owner)

        // Write post-creation code here.
        
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
