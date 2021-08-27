// ˅

// ˄

public class Directory: FileSystemElement {
    // ˅
    
    // ˄

    private let name: String

    private var elements: [FileSystemElement] = []
    // ˅
    
    // ˄

    public init(name: String) {
        // ˅
        self.name = name
        // ˄
    }

    // Accept a visitor
    public override func accept(visitor: Visitor) {
        // ˅
        visitor.visit(directory: self)
        // ˄
    }

    // Directory name
    public override func getName() -> String {
        // ˅
        return name
        // ˄
    }

    // Directory size
    public override func getSize() -> Int {
        // ˅
        var size = 0
        for element in elements {
            size += element.getSize()
        }
        return size
        // ˄
    }

    // Add an element
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
