// ˅

// ˄

public class Hand {
    // ˅
    
    // ˄

    // Values of rock, scissors and paper.
    public let value: Int

    public init(value: Int) {
        // ˅
        self.value = value
        // ˄
    }

    // Return true if "this" is stronger than "hand".
    public func isStrongerThan(hand: Hand) -> Bool {
        // ˅
        return judgeGame(hand: hand) == 1
        // ˄
    }

    // Return false if "this" is weaker than "hand".
    public func isWeakerThan(hand: Hand) -> Bool {
        // ˅
        return judgeGame(hand: hand) == -1
        // ˄
    }

    public func toString() -> String {
        // ˅
        return Hand.name[value]
        // ˄
    }

    // The draw is 0. "this" win is 1. "hand" win is -1.
    private func judgeGame(hand: Hand) -> Int {
        // ˅
        if self === hand {
            return 0
        }
        else if (value + 1) % 3 == hand.value {
            return 1
        }
        else {
            return -1
        }
        // ˄
    }

    // ˅
    static public let ROCK: Int = 0          // Rock
    static public let SCISSORS: Int = 1      // Scissors
    static public let PAPER: Int = 2         // Paper
    
    // Hands of rock-scissors-paper
    static private let hands: [Hand] = [Hand(value: ROCK), Hand(value: SCISSORS), Hand(value: PAPER)]
    
    // Characters of the hands
    static private let name: [String] = ["Rock", "Scissors", "Paper"]
    
    // Get an instance of the hand
    static public func getHand(handValue: Int) -> Hand {
        return hands[handValue]
    }
    // ˄
}

// ˅

// ˄
