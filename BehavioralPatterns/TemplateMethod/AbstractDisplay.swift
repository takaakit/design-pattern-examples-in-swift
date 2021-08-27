// ˅

// ˄

public class AbstractDisplay {
    // ˅
    
    // ˄

    public func open() {
        // ˅
        fatalError("An abstract method has been executed.")
        // ˄
    }

    public func write() {
        // ˅
        fatalError("An abstract method has been executed.")
        // ˄
    }

    public func close() {
        // ˅
        fatalError("An abstract method has been executed.")
        // ˄
    }

    public func output() {
        // ˅
        open()
        for _ in 0..<5 {    // Repeat write 5 times
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
