// ˅
import Foundation

// ˄

public class Display {
    // ˅
    
    // ˄

    // Column width
    public func getColumns() -> Int {
        // ˅
        print("Display.getColumns() must be overriden.")
        exit(1)
        // ˄
    }

    // Number of rows
    public func getRows() -> Int {
        // ˅
        print("Display.getRows() must be overriden.")
        exit(1)
        // ˄
    }

    public func getLineText(row: Int) -> String? {
        // ˅
        print("Display.getLineText() must be overriden.")
        exit(1)
        // ˄
    }

    // Show all
    public func show() {
        // ˅
        for i in 0..<getRows() {
            print(getLineText(row: i)!)
        }
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
