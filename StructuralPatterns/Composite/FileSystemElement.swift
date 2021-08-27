// ˅

// ˄

public class FileSystemElement {
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

    // Print this element with the "upperPath".
    public func print(upperPath: String) {
        // ˅
        fatalError("An abstract method has been executed.")
        // ˄
    }

    public func toString() -> String {
        // ˅
        return getName() + " (" + String(getSize()) + ")"
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
