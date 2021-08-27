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
        let length = message.count
        print("\"\(message)\"")
        print(" ", terminator: "")
        for _ in 0..<length {
            print(underlineChar, terminator: "")
        }
        print()
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
