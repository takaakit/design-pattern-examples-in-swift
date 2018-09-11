// ˅

// ˄

public class ListFactory: Factory {
    // ˅
    
    // ˄

    public func createPage(title: String, author: String) -> Page {
        // ˅
        return ListPage(title: title, author: author)
        // ˄
    }

    public func createLink(name: String, url: String) -> Link {
        // ˅
        return ListLink(name: name, url: url)
        // ˄
    }

    public func createData(name: String) -> Data {
        // ˅
        return ListData(name: name)
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
