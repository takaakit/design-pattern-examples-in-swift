// ˅

// ˄

public class ProxyPrinter: Printer {
    // ˅
    
    // ˄

    private var currentName: String
    // ˅
    
    // ˄

    // A printer that actually prints
    private var real: RealPrinter?
    // ˅
    
    // ˄

    public init(name: String) {
        // ˅
        self.currentName = name
        self.real = nil
        // ˄
    }

    public func getName() -> String {
        // ˅
        if real != nil {
            return real!.getName()
        }
        else {
            return self.currentName
        }
        // ˄
    }

    public func changeName(name: String) {
        // ˅
        if real != nil {
            real!.changeName(name: name)
        }
        self.currentName = name
        // ˄
    }

    public func output(content: String) {
        // ˅
        if real == nil {
            real = RealPrinter(name: currentName)
        }
        real!.output(content: content)
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
