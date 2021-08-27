// ˅

// ˄

public class MessageDisplay {
    // ˅
    
    // ˄

    private let message: String

    public init(message: String) {
        // ˅
        self.message = message
        // ˄
    }

    public func displayWithHyphens() {
        // ˅
        print("-- \(message) --")
        // ˄
    }

    public func displayWithBrackets() {
        // ˅
        print("[[ \(message) ]]")
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
