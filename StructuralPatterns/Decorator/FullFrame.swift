// ˅

// ˄

public class FullFrame: Frame {
    // ˅
    
    // ˄

    public override init(display: Display) {
        // ˅
        super.init(display: display)
        // ˄
    }

    // Number of characters added left and right decoration characters
    public override func getColumns() -> Int {
        // ˅
        return 1 + display.getColumns() + 1
        // ˄
    }

    // Number of rows added the upper and lower decoration lines
    public override func getRows() -> Int {
        // ˅
        return 1 + display.getRows() + 1
        // ˄
    }

    public override func getLineText(row: Int) -> String {
        // ˅
        if row == 0 {
            return "+" + createLine(ch: "-", size: display.getColumns()) + "+"  // Upper frame
        }
        else if row == display.getRows() + 1 {
            return "+" + createLine(ch: "-", size: display.getColumns()) + "+"  // Bottom frame
        }
        else {
            return "|" + display.getLineText(row: row - 1) + "|"                // Other
        }
        // ˄
    }

    private func createLine(ch: UnicodeScalar, size: Int) -> String {
        // ˅
        var buf = ""
        for _ in 0..<size {
            buf.append(String(ch))
        }
        return buf
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
