// ˅

// ˄

public class LargeSizeString {
    // ˅
    
    // ˄

    private var largeSizeChars: [LargeSizeChar]
    // ˅
    
    // ˄

    public init(string: String) {
        // ˅
        self.largeSizeChars = [LargeSizeChar]()
        for uc in string.unicodeScalars {
            self.largeSizeChars.append(LargeSizeCharFactory.getInstance().getLargeSizeChar(charName: uc))
        }
        // ˄
    }

    public func display() {
        // ˅
        for i in 0..<largeSizeChars.count {
            self.largeSizeChars[i].display()
        }
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
