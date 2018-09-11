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

    // Print this element with the "upperPath".
    public override func print(upperPath: String) {
        // ˅
        Swift.print(upperPath + "/" + toString())
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
