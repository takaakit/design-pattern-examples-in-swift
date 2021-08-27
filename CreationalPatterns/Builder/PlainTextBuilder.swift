// ˅

// ˄

public class PlainTextBuilder: Builder {
    // ˅
    
    // ˄

    private var outputData: String = ""
    // ˅
    
    // ˄

    // Make a title of plain text
    public func createTitle(title: String) {
        // ˅
        outputData.append("--------------------------------\n")     // Decoration line
        outputData.append("[\(title)]\n")                      // Title
        outputData.append("\n")                                     // Blank line
        // ˄
    }

    // Make a section of plain text
    public func createSection(section: String) {
        // ˅
        outputData.append("* \(section)\n")                    // Section
        outputData.append("\n")                                     // Blank line
        // ˄
    }

    // Make items of plain text
    public func createItems(items: Array<String>) {
        // ˅
        for i in 0..<items.count {
            outputData.append("  - \(items[i])\n")             // Items
        }
        outputData.append("\n")                                     // Blank line
        // ˄
    }

    public func close() {
        // ˅
        outputData.append("--------------------------------\n")     // Decoration line
        // ˄
    }

    // String to output
    public func getContent() -> String {
        // ˅
        return outputData
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
