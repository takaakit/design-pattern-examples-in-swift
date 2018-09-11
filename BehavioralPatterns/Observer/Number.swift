// ˅

// ˄

// An abstract class that generates numbers.
public class Number {
    // ˅

    // ˄

    public var value: Int = 0
    // ˅
    
    // ˄

    private var observers: [Observer] = []
    // ˅
    
    // ˄

    public func generate() {
        // ˅

        // ˄
    }

    public func addObserver(observer: Observer) {
        // ˅
        observers.append(observer)
        // ˄
    }

    public func deleteObserver(observer: Observer) {
        // ˅
        for i in 0..<observers.count {
            if observer === observers[i] {
                observers.remove(at: i)
            }
        }
        // ˄
    }

    public func notifyObservers() {
        // ˅
        for observer in observers {
            observer.update(number: self)
        }
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
