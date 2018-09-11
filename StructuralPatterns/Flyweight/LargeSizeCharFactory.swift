// ˅

// ˄

public class LargeSizeCharFactory {
    // ˅
    
    // ˄

    private var poolChars: [String: LargeSizeChar]
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
        var lsc: LargeSizeChar? = poolChars[String(charName)]
        if lsc == nil {
            lsc = LargeSizeChar(charName: charName)     // Create an instance
            poolChars[String(charName)] = lsc
        }
        return lsc!
        // ˄
    }

    private init() {
        // ˅
        self.poolChars = [String: LargeSizeChar]()
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
