// ˅

// ˄

public class PrintMessageDisplay: MessageDisplay, Print {
    // ˅
    
    // ˄

    public override init(message: String) {
        // ˅
        super.init(message: message)
        // ˄
    }

    public func printWeak() {
        // ˅
        displayWithHyphens()
        // ˄
    }

    public func printStrong() {
        // ˅
        displayWithBrackets()
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
