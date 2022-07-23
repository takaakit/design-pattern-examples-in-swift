// ˅

// ˄

public class Manager {
    // ˅
    
    // ˄

    private var displays: [String: Display] = [:]
    // ˅
    
    // ˄

    public func registerDisplay(displayName: String, display: Display) {
        // ˅
        displays.updateValue(display, forKey: displayName)
        // ˄
    }

    public func getDisplay(displayName: String) -> Display? {
        // ˅
        let d: Display = displays[displayName]!
        return d.clone()    // Create a new object by asking a concrete class to clone itself. Therefore, do not need to know the concrete Display class name.
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
