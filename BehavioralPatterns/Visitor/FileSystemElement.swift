// ˅

// ˄

public class FileSystemElement: Element {
    // ˅
    
    // ˄

    public let name: String

    public let size: Int

    public init(name: String, size: Int) {
        // ˅
        self.name = name
        self.size = size
        // ˄
    }

    public func accept(visitor: Visitor) {
        // ˅
        
        // ˄
    }

    public func toString() -> String {
        // ˅
        return name + " (" + String(size) + ")"
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
