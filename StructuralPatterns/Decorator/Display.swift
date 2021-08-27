// ˅
import Foundation

// ˄

public class Display {
    // ˅
    
    // ˄

    // Column width
    public func getColumns() -> Int {
        // ˅
        fatalError("An abstract method has been executed.")
        // ˄
    }

    // Number of rows
    public func getRows() -> Int {
        // ˅
        fatalError("An abstract method has been executed.")
        // ˄
    }

    public func getLineText(row: Int) -> String {
        // ˅
        fatalError("An abstract method has been executed.")
        // ˄
    }

    // Show all
    public func show() {
        // ˅
        for i in 0..<getRows() {
            print(getLineText(row: i))
        }
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
