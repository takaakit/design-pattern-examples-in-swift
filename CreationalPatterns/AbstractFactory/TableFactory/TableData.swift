// ˅

// ˄

public class TableData: Data {
    // ˅
    
    // ˄

    public override init(name: String) {
        // ˅
        super.init(name: name)
        // ˄
    }

    public override func toHTML() -> String {
        // ˅
        var buffer: String = ""
        buffer.append("<td><table width=\"100%\" border=\"2\">\n")
        buffer.append("<tr><td bgcolor=\"#00CC00\" align=\"center\" colspan=\"\(String(items.count))\"><b>\(name)</b></td></tr>\n")
        buffer.append("<tr>\n")
        for item in items {
            buffer.append(item.toHTML())
        }
        buffer.append("</tr>\n")
        buffer.append("</table></td>\n")
        return buffer
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
