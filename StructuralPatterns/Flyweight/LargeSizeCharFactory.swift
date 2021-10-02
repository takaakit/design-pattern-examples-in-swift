// ˅

// ˄

public class LargeSizeCharFactory {
    // ˅
    
    // ˄

    private var poolChars: [UnicodeScalar: LargeSizeChar]
    // ˅
    
    // ˄

    private static let instance: LargeSizeCharFactory = LargeSizeCharFactory()

    public class func getInstance() -> LargeSizeCharFactory {
        // ˅
        return instance
        // ˄
    }

    // Create an instance of the large size character.
    public func getLargeSizeChar(charName: UnicodeScalar) -> LargeSizeChar {
        // ˅
        var lsc: LargeSizeChar? = poolChars[charName]
        if lsc == nil {
            lsc = LargeSizeChar(charName: charName)     // Create an instance
            poolChars[charName] = lsc
        }
        return lsc!
        // ˄
    }

    private init() {
        // ˅
        self.poolChars = [UnicodeScalar: LargeSizeChar]()
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
