// ˅

// ˄

public class Singleton {
    // ˅
    
    // ˄

    private static let instance: Singleton = Singleton()

    public class func getInstance() -> Singleton {
        // ˅
        return instance
        // ˄
    }

    private init() {
        // ˅
        
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
