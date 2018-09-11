// ˅
#if os(Linux)
import Foundation
#else
import Cocoa
#endif

// ˄

// When winning a game, show the same hand at the next time.
public class StrategyA: Strategy {
    // ˅
    
    // ˄

    private var won: Bool = false
    // ˅
    
    // ˄

    private var preHand: Hand = Hand.getHand(handValue: Hand.ROCK)
    // ˅
    
    // ˄

    public init(randomSeed: Int) {
        // ˅
        srandom(UInt32(randomSeed))
        // ˄
    }

    public func nextHand() -> Hand {
        // ˅
        if !won {
            #if os(Linux)
            preHand = Hand.getHand(handValue: Int(random()) % 3)
            #else
            preHand = Hand.getHand(handValue: Int(arc4random()) % 3)
            #endif
        }
        return preHand
        // ˄
    }

    public func learn(win: Bool) {
        // ˅
        won = win
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
