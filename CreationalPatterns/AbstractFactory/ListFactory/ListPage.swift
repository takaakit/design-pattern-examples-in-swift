// ˅

// ˄

public class ListPage: Page {
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
        buffer.append("<html><head><title>" + title + "</title></head>\n")
        buffer.append("<body><h1>" + title + "</h1>\n")
        buffer.append("<ul>\n")
        for content in contents {
            buffer.append(content.toHTML())
        }
        buffer.append("</ul>\n")
        buffer.append("<hr><address>" + author + "</address>")
        buffer.append("</body></html>\n")
        return buffer
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
