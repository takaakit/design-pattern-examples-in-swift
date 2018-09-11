// ˅
import Foundation

// ˄

public class Page {
    // ˅
    
    // ˄

    public let title: String

    public let author: String

    public var contents: [Item] = []
    // ˅
    
    // ˄

    public init(title: String, author: String) {
        // ˅
        self.title = title
        self.author = author
        // ˄
    }

    public func toHTML() -> String {
        // ˅
        print("Page.toHTML() must be overriden.")
        exit(1)
        // ˄
    }

    public func add(item: Item) {
        // ˅
        contents.append(item)
        // ˄
    }

    public func output() {
        // ˅
        let fileName = title + ".html"
        do {
            try toHTML().write(toFile: fileName, atomically: true, encoding: String.Encoding.utf8)
        }
        catch {
            print("Failed to write")
            exit(1)
        }
        print(fileName + " has been created.")
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
