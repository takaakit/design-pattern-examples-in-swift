// ˅

// ˄

public class TableFactory: Factory {
    // ˅
    
    // ˄

    public func createPage(title: String, author: String) -> Page {
        // ˅
        return TablePage(title: title, author: author)
        // ˄
    }

    public func createLink(name: String, url: String) -> Link {
        // ˅
        return TableLink(name: name, url: url)
        // ˄
    }

    public func createData(name: String) -> Data {
        // ˅
        return TableData(name: name)
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
