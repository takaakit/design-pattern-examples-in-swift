// ˅

// ˄

public class ListData: Data {
    // ˅
    
    // ˄

    public override init(name: String) {
        // ˅
        super.init(name: name)
        // ˄
    }

    public override func toHTML() -> String {
        // ˅
        var buffer = ""
        buffer.append("<li>\(name)<ul>\n")
        for item in items {
            buffer.append(item.toHTML())
        }
        buffer.append("</ul></li>\n")
        return buffer
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
