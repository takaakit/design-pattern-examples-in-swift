// ˅

// ˄

public class FileSystemElement: Element {
    // ˅
    
    // ˄

    public func getName() -> String {
        // ˅
        fatalError("An abstract method has been executed.")
        // ˄
    }

    public func getSize() -> Int {
        // ˅
        fatalError("An abstract method has been executed.")
        // ˄
    }

    public func accept(visitor: Visitor) {
        // ˅
        fatalError("An abstract method has been executed.")
        // ˄
    }

    public func toString() -> String {
        // ˅
        return "\(getName()) (\(String(getSize())))"
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
