// ˅

// ˄

// Provides an interface for attaching and detaching Observer objects.
public class Subject {
    // ˅
    
    // ˄

    private var observers: [Observer] = []
    // ˅
    
    // ˄

    public func attach(observer: Observer) {
        // ˅
        observers.append(observer)
        // ˄
    }

    public func detach(observer: Observer) {
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
            observer.update(changedSubject: self)
        }
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
