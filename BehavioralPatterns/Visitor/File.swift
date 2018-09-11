// ˅

// ˄

public class File: FileSystemElement {
    // ˅
    
    // ˄

    public override init(name: String, size: Int) {
        // ˅
        super.init(name: name, size: size)
        // ˄
    }

    public override func accept(visitor: Visitor) {
        // ˅
        visitor.visit(file: self)
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
