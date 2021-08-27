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

    // Print this element with the "upperPath".
    public override func print(upperPath: String) {
        // ˅
        Swift.print("\(upperPath)/\(self.toString())")
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
