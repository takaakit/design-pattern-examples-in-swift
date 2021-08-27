// ˅

// ˄

public class MultiLineDisplay: Display {
    // ˅
    
    // ˄

    public override init(impl: DisplayImpl) {
        // ˅
        super.init(impl: impl)
        // ˄
    }

    // Repeat display for the specified number of times
    public func outputMultiple(times: Int) {
        // ˅
        open()
        for _ in 0..<times {
            write()
        }
        close()
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
