// ˅
#if os(Linux)
import Foundation
#else
import Cocoa
#endif

// ˄

// Generate a random number.
public class RandomNumber: Number {
    // ˅
    
    // ˄

    public override func generate() {
        // ˅
        for _ in 0..<19 {
            #if os(Linux)
            value = Int(random() % 50)
            #else
            value = Int(arc4random()) % 50
            #endif
            notifyObservers()
        }
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
