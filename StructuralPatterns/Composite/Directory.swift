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

    // Print this element with the "upperPath".
    public override func print(upperPath: String) {
        // ˅
        Swift.print("\(upperPath)/\(self.toString())")
        for element in elements {
            element.print(upperPath: "\(upperPath)/\(self.getName())")
        }
        // ˄
    }

    // Add an element
    public func add(element: FileSystemElement) {
        // ˅
        elements.append(element)
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
