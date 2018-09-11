// ˅
import Foundation

// ˄

public class Factory {
    // ˅
    
    // ˄

    public func create(owner: String) throws -> Product {
        // ˅
        let product = try createProduct(owner: owner)
        try registerProduct(product: product)
        return product
        // ˄
    }

    public func createProduct(owner: String) throws -> Product {
        // ˅
        throw NSError(domain: "error", code: -1, userInfo: nil)
        // ˄
    }

    public func registerProduct(product: Product) throws {
        // ˅
        throw NSError(domain: "error", code: -1, userInfo: nil)
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
