// ˅

// ˄

public class SideFrame: Frame {
    // ˅
    
    // ˄

    // Decoration character
    private let frameChar: UnicodeScalar

    public init(display: Display, frameChar: UnicodeScalar) {
        // ˅
        self.frameChar = frameChar
        super.init(display: display)
        // ˄
    }

    // Number of characters added left and right decoration characters
    public override func getColumns() -> Int {
        // ˅
        return 1 + display.getColumns() + 1
        // ˄
    }

    // Number of lines
    public override func getRows() -> Int {
        // ˅
        return display.getRows()
        // ˄
    }

    public override func getLineText(row: Int) -> String? {
        // ˅
        return String(frameChar) + display.getLineText(row: row)! + String(frameChar)
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
