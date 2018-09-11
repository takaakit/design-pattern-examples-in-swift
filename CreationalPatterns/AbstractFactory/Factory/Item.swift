// ˅
import Foundation

// ˄

public class Item {
    // ˅
    
    // ˄

    public let name: String

    public init(name: String) {
        // ˅
        self.name = name
        // ˄
    }

    public func toHTML() -> String {
        // ˅
        print("Item.toHTML() must be overriden.")
        exit(1)
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
