// ˅

// ˄

public class PrinterProxy: Printer {
    // ˅
    
    // ˄

    private var currentName: String
    // ˅
    
    // ˄

    public var printerName: String
    // ˅
    {
        get {
            return currentName
        }
        set(value) {
            real?.printerName = value
            self.currentName = value
        }
    }
    // ˄

    // A printer that actually prints
    private var real: RealPrinter? = nil
    // ˅
    
    // ˄

    public init(name: String) {
        // ˅
        self.currentName = name
        self.printerName = name
        // ˄
    }

    public func output(content: String) {
        // ˅
        createPrinter()
        real?.output(content: content)
        // ˄
    }

    // Create an actual printer
    private func createPrinter() {
        // ˅
        if real == nil {
            real = RealPrinter(name: currentName)
        }
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
