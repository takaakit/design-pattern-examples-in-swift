// ˅

// ˄

// Holds a value and notifies observers when the value is set.
public class NumberSubject: Subject {
    // ˅
    
    // ˄

    private var value: Int = 0
    // ˅
    
    // ˄

    public override init() {
        // ˅
        
        // ˄
    }

    public func setValue(value: Int) {
        // ˅
        self.value = value
        notifyObservers()
        // ˄
    }

    public func getValue() -> Int {
        // ˅
        return value
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
