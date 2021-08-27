// ˅

// ˄

public class ListVisitor: Visitor {
    // ˅
    
    // ˄

    // Currently visited directory
    private var currentDirectory: String = ""
    // ˅
    
    // ˄

    public init() {
        // ˅
        
        // ˄
    }

    // Visit a file
    public func visit(file: File) {
        // ˅
        print("\(currentDirectory)/\(file.toString())")
        // ˄
    }

    // Visit a directory
    public func visit(directory: Directory) {
        // ˅
        print("\(currentDirectory)/\(directory.toString())")
        let visitedDirectory: String = currentDirectory
        currentDirectory = currentDirectory + "/" + directory.getName()
        for element in directory.getElements() {
            element.accept(visitor: self)
        }
        currentDirectory = visitedDirectory
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
