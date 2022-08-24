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

    public func clone() -> Display {
        // ˅
        return FrameDisplay(borderChar: self.borderChar)
        // ˄
    }

    public func show(message: String) {
        // ˅
        print(String(repeating: borderChar, count: message.count + 4))
        print("\(String(borderChar)) \(message) \(String(borderChar))")
        print(String(repeating: borderChar, count: message.count + 4))
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
