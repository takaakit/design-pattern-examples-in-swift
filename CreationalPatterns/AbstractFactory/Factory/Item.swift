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
        fatalError("An abstract method has been executed.")
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
