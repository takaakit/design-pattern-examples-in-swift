// ˅

// ˄

public class ListLink: Link {
    // ˅
    
    // ˄

    public override init(name: String, url: String) {
        // ˅
        super.init(name: name, url: url)
        // ˄
    }

    public override func toHTML() -> String {
        // ˅
        return "  <li><a href=\"" + url + "\">" + name + "</a></li>\n"
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
