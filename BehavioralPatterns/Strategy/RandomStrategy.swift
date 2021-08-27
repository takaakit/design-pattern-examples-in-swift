// ˅
#if os(Linux)
import Foundation
#else
import Cocoa
#endif

// ˄

// Random Strategy: showing a random hand signal.
public class RandomStrategy: Strategy {
    // ˅
    
    // ˄

    public init() {
        // ˅
        srandom(UInt32(time(nil)))
        // ˄
    }

    public func showHandSignal() -> HandSignal {
        // ˅
        #if os(Linux)
        let randomHandValue: Int = Int(random()) % 3
        #else
        let randomHandValue: Int = Int(arc4random()) % 3
        #endif

        return HandSignal.getHand(handValue: randomHandValue)
        // ˄
    }

    public func notifyGameResult(result: GameResultType, ownHand: HandSignal, opponentsHand: HandSignal) {
        // ˅
        // Do nothing
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
