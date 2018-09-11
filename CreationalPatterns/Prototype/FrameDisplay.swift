// ˅
import Foundation

// ˄

public class FrameDisplay: Display {
    // ˅
    
    // ˄

    private let borderChar: UnicodeScalar

    public init(borderChar: UnicodeScalar) {
        // ˅
        self.borderChar = borderChar
        // ˄
    }

    public func createClone() throws -> Display {
        // ˅
        return FrameDisplay(borderChar: self.borderChar)
        // ˄
    }

    public func show(message: String) {
        // ˅
        let length = message.count
        for _ in 0..<length+4 {
            print(borderChar, terminator: "")
        }
        print()
        print(String(borderChar) + " " + message + " " + String(borderChar))
        for _ in 0..<length+4 {
            print(borderChar, terminator: "")
        }
        print()
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
