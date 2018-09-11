// ˅
#if os(Linux)
import Foundation
#else
import Cocoa
#endif

// ˄

// Calculate a hand from the previous hand stochastically.
public class StrategyB: Strategy {
    // ˅
    
    // ˄

    private var history: [[Int]] = [[1, 1, 1], [1, 1, 1], [1, 1, 1]]
    // ˅
    
    // ˄

    private var preHand: Hand = Hand.getHand(handValue: Hand.ROCK)
    // ˅
    
    // ˄

    private var curHand: Hand = Hand.getHand(handValue: Hand.ROCK)
    // ˅
    
    // ˄

    public init(randomSeed: Int) {
        // ˅
        srandom(UInt32(randomSeed))
        // ˄
    }

    public func nextHand() -> Hand {
        // ˅
        #if os(Linux)
        let randomHandValue: Int = Int(random()) % getHistorySum(handValue: curHand.value)
        #else
        let randomHandValue: Int = Int(arc4random()) % getHistorySum(handValue: curHand.value)
        #endif
        var handValue: Int = 0
        if randomHandValue < history[curHand.value][0] {
            handValue = Hand.ROCK
        }
        else if randomHandValue < history[curHand.value][0] + history[curHand.value][1] {
            handValue = Hand.SCISSORS
        }
        else {
            handValue = Hand.PAPER
        }
        preHand = curHand
        curHand = Hand.getHand(handValue: handValue)
        return curHand
        // ˄
    }

    public func learn(win: Bool) {
        // ˅
        if win {
            history[preHand.value][curHand.value] += 1
        }
        else {
            history[preHand.value][(curHand.value + 1) % 3] += 1
            history[preHand.value][(curHand.value + 2) % 3] += 1
        }
        // ˄
    }

    private func getHistorySum(handValue: Int) -> Int {
        // ˅
        var sum = 0
        for i in 0..<3 {
            sum += history[handValue][i]
        }
        return sum
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
