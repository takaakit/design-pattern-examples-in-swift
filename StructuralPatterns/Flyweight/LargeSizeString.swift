// ˅

// ˄

public class LargeSizeString {
    // ˅
    
    // ˄

    private var largeSizeChars: [LargeSizeChar] = [LargeSizeChar]()
    // ˅
    
    // ˄

    public init(string: String) {
        // ˅
        for uc in string.unicodeScalars {
            largeSizeChars.append(LargeSizeCharFactory.getInstance().getLargeSizeChar(charName: uc))
        }
        // ˄
    }

    public func display() {
        // ˅
        for i in 0..<largeSizeChars.count {
            largeSizeChars[i].display()
        }
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
