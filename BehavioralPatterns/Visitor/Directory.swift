// ˅

// ˄

public class Directory: FileSystemElement {
    // ˅
    
    // ˄

    // Collection of elements
    private var elements: [FileSystemElement] = []
    // ˅
    
    // ˄

    public init(name: String) {
        // ˅
        super.init(name: name, size: 0)
        // ˄
    }

    // Accept a visitor
    public override func accept(visitor: Visitor) {
        // ˅
        visitor.visit(directory: self)
        // ˄
    }

    // Add an entry
    public func add(element: FileSystemElement) {
        // ˅
        elements.append(element)
        // ˄
    }

    public func getElements() -> [FileSystemElement] {
        // ˅
        return elements
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
