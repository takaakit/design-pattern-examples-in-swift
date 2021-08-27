// ˅

// ˄

public class MessageDisplay: Display {
    // ˅
    
    // ˄

    // Message to be displayed
    private let message: String

    public init(message: String) {
        // ˅
        self.message = message
        // ˄
    }

    // Number of characters
    public override func getColumns() -> Int {
        // ˅
        return message.count
        // ˄
    }

    // The number of rows is 1
    public override func getRows() -> Int {
        // ˅
        return 1
        // ˄
    }

    public override func getLineText(row: Int) -> String {
        // ˅
        if row == 0 {
            return message
        }
        else {
            return ""
        }
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
