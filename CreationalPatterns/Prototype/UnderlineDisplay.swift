// ˅
import Foundation

// ˄

public class UnderlineDisplay: Display {
    // ˅
    
    // ˄

    private let underlineChar: UnicodeScalar

    public init(underlineChar: UnicodeScalar) {
        // ˅
        self.underlineChar = underlineChar
        // ˄
    }

    public func clone() -> Display {
        // ˅
        return UnderlineDisplay(underlineChar: self.underlineChar)
        // ˄
    }

    public func show(message: String) {
        // ˅
        print("\"\(message)\"")
        print(" \(String(repeating: underlineChar, count: message.count))")
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
