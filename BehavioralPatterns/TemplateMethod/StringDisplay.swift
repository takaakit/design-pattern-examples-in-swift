// ˅

// ˄

public class StringDisplay: AbstractDisplay {
    // ˅
    
    // ˄

    private let strText: String

    // String width
    private let width: Int

    public init(strText: String) {
        // ˅
        self.strText = strText
        self.width = strText.count
        // ˄
    }

    public override func open() {
        // ˅
        writeLine()             // Write a line
        // ˄
    }

    public override func write() {
        // ˅
        print("|\(strText)|")   // Display the character with "|"
        // ˄
    }

    public override func close() {
        // ˅
        writeLine()             // Write a line
        // ˄
    }

    private func writeLine() {
        // ˅
        print("+", terminator: "")                                  // Display an end mark "+"
        print(String(repeating: "-", count: width), terminator: "") // Display a line "-"
        print("+")                                                  // Display an end mark "+"
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
