// ˅

// ˄

public class Directory: FileSystemElement {
    // ˅
    
    // ˄

    private var elements: [FileSystemElement] = [FileSystemElement]()
    // ˅
    
    // ˄

    public init(name: String) {
        // ˅
        super.init(name: name, size: 0)
        // ˄
    }

    // Print this element with the "upperPath".
    public override func print(upperPath: String) {
        // ˅
        Swift.print(upperPath + "/" + toString())
        for element in elements {
            element.print(upperPath: upperPath + "/" + super.name)
        }
        // ˄
    }

    // Add a element
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
