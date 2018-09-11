// ˅

// ˄

public class Display {
    // ˅
    
    // ˄

    private let impl: DisplayImpl

    public init(impl: DisplayImpl) {
        // ˅
        self.impl = impl
        // ˄
    }

    public func display() {
        // ˅
        open()
        write()
        close()
        // ˄
    }

    public func open() {
        // ˅
        impl.implOpen()
        // ˄
    }

    public func write() {
        // ˅
        impl.implWrite()
        // ˄
    }

    public func close() {
        // ˅
        impl.implClose()
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
