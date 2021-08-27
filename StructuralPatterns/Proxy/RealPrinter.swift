// ˅
import Foundation

// ˄

public class RealPrinter: Printer {
    // ˅
    
    // ˄

    public var name: String
    // ˅
    
    // ˄

    public init(name: String) {
        // ˅
        self.name = name
        heavyTask(message: "Creating an instance(\(name)) of the Printer")
        // ˄
    }

    public func getName() -> String {
        // ˅
        return self.name
        // ˄
    }

    public func changeName(name: String) {
        // ˅
        self.name = name
        // ˄
    }

    // Display a content with the name
    public func output(content: String) {
        // ˅
        print("==========")
        print(content)
        print("Printed by \(name)")
        print("==========")
        // ˄
    }

    // Heavy task (Please think so...)
    private func heavyTask(message: String) {
        // ˅
        print(message, terminator: "")
        for _ in 0..<10 {
            Thread.sleep(forTimeInterval: 0.5)
            print(".", terminator: "")
            fflush(stdout)
        }
        print("Done.")
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
