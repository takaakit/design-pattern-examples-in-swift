// ˅

// ˄

public class File: FileSystemElement {
    // ˅
    
    // ˄

    private let name: String

    private let size: Int

    public init(name: String, size: Int) {
        // ˅
        self.name = name
        self.size = size
        // ˄
    }

    public override func accept(visitor: Visitor) {
        // ˅
        visitor.visit(file: self)
        // ˄
    }

    // File name
    public override func getName() -> String {
        // ˅
        return name
        // ˄
    }

    // File size
    public override func getSize() -> Int {
        // ˅
        return size
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
