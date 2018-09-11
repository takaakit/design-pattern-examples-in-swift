// ˅
import Foundation

// ˄

public class RealPrinter: Printer {
    // ˅
    
    // ˄

    public var printerName: String
    // ˅
    
    // ˄

    public init(name: String) {
        // ˅
        self.printerName = name
        
        heavyTask(message: "Creating an instance(" + name + ") of the Printer")
        // ˄
    }

    // Display a content with the name
    public func output(content: String) {
        // ˅
        print("=== " + printerName + " ===")
        print(content)
        // ˄
    }

    // Heavy task (Please think so...)
    private func heavyTask(message: String) {
        // ˅
        print(message)
        for _ in 0..<10 {
            Thread.sleep(forTimeInterval: 1)
            print(".", terminator: "")
        }
        print("Done.")
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
