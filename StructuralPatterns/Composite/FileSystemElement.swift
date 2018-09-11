// ˅

// ˄

public class FileSystemElement {
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

    // Print this element with the "upperPath".
    public func print(upperPath: String) {
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
