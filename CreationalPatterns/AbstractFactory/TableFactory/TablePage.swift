// ˅

// ˄

public class TablePage: Page {
    // ˅
    
    // ˄

    public override init(title: String, author: String) {
        // ˅
        super.init(title: title, author: author)
        // ˄
    }

    public override func toHTML() -> String {
        // ˅
        var buffer: String = ""
        buffer.append("<html><head><title>\(title)</title></head><body>\n")
        buffer.append("<h1>\(title)</h1>\n")
        buffer.append("<table width=\"80%\" border=\"3\">\n")
        for content in contents {
            buffer.append("<tr>\(content.toHTML())</tr>\n")
        }
        buffer.append("</table>\n")
        buffer.append("<hr><address>\(author)</address>\n")
        buffer.append("</body></html>\n")
        return buffer
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
