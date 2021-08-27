// ˅

// ˄

// Hold data which will be interpreted.
public class Context {
    // ˅

    // ˄

    private var nodes: [String]
    // ˅
    
    // ˄

    private var currentIndex: Int
    // ˅
    
    // ˄

    public init(text: String) {
        // ˅
        nodes = text.components(separatedBy: " ")
        currentIndex = 0
        // ˄
    }

    public func nextToken() {
        // ˅
        currentIndex += 1
        // ˄
    }

    public func getToken() -> String {
        // ˅
        if currentIndex < nodes.count {
            return nodes[currentIndex]
        }
        else {
            return ""
        }
        // ˄
    }

    public func slideToken(token: String) {
        // ˅
        if token != getToken() {
            print("WARNING: \(token) is expected but \(getToken()) was found.")
            return
        }
        nextToken()
        // ˄
    }

    public func getNumber() -> Int? {
        // ˅
        return Int(getToken())
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
