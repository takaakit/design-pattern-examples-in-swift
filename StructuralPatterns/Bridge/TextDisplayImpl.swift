// ˅

// ˄

public class TextDisplayImpl: DisplayImpl {
    // ˅
    
    // ˄

    // A string to display
    private let text: String

    // A number of characters in bytes
    private let width: Int

    public init(text: String) {
        // ˅
        self.text = text
        self.width = text.utf8.count    // Set the number of characters in bytes.
        // ˄
    }

    public func implOpen() {
        // ˅
        printLine()
        // ˄
    }

    public func implWrite() {
        // ˅
        print(":\(text):")              // Enclose a text with ":" and display it.
        // ˄
    }

    public func implClose() {
        // ˅
        printLine()
        // ˄
    }

    private func printLine() {
        // ˅
        print("*", terminator: "")      // Display "*" mark at the beginning of a frame.
        for _ in 0..<width {
            print(".", terminator: "")  // Display "." for the number of "width".
        }
        print("*")                      // Display "*" mark at the end of a frame.
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
