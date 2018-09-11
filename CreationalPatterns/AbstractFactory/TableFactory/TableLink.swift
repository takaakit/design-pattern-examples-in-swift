// ˅

// ˄

public class TableLink: Link {
    // ˅
    
    // ˄

    public override init(name: String, url: String) {
        // ˅
        super.init(name: name, url: url)
        // ˄
    }

    public override func toHTML() -> String {
        // ˅
        return "  <td><a href=\"" + url + "\">" + name + "</a></td>\n"
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
