// ˅

// ˄

public class PlainTextBuilder: Builder {
    // ˅
    
    // ˄

    // String to output
    public var result: String
    // ˅
    {
        get {
            return buffer
        }
    }
    // ˄

    private var buffer: String = ""
    // ˅
    
    // ˄

    // Make a title of plain text
    public func createTitle(title: String) {
        // ˅
        buffer.append("--------------------------------\n")     // Decoration line
        buffer.append("[" + title + "]\n")                      // Title
        buffer.append("\n")                                     // Blank line
        // ˄
    }

    // Make a section of plain text
    public func createSection(section: String) {
        // ˅
        buffer.append("* " + section + "\n")                    // Section
        buffer.append("\n")                                     // Blank line
        // ˄
    }

    // Make items of plain text
    public func createItems(items: Array<String>) {
        // ˅
        for i in 0..<items.count {
            buffer.append("  - " + items[i] + "\n")             // Items
        }
        buffer.append("\n")                                     // Blank line
        // ˄
    }

    public func close() {
        // ˅
        buffer.append("--------------------------------\n")     // Decoration line
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
