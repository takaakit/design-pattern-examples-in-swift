// ˅

// ˄

public class HandSignal {
    // ˅
    
    // ˄

    // Rock
    public static let ROCK: Int = 0

    // Scissors
    public static let SCISSORS: Int = 1

    // Paper
    public static let PAPER: Int = 2

    // Hands of rock-scissors-paper
    private static let hands: [HandSignal] = [HandSignal(value: ROCK), HandSignal(value: SCISSORS), HandSignal(value: PAPER)]

    // Characters of the hands
    private static let name: [String] = ["Rock", "Scissors", "Paper"]

    // Values of rock, scissors and paper.
    public let value: Int

    // Get an instance of the hand
    public class func getHand(handValue: Int) -> HandSignal {
        // ˅
        return hands[handValue]
        // ˄
    }

    public init(value: Int) {
        // ˅
        self.value = value
        // ˄
    }

    // Return true if "this" is stronger than "hand".
    public func isStrongerThan(hand: HandSignal) -> Bool {
        // ˅
        return judgeGame(hand: hand) == 1
        // ˄
    }

    // Return false if "this" is weaker than "hand".
    public func isWeakerThan(hand: HandSignal) -> Bool {
        // ˅
        return judgeGame(hand: hand) == -1
        // ˄
    }

    public func toString() -> String {
        // ˅
        return HandSignal.name[value]
        // ˄
    }

    // The draw is 0. "this" win is 1. "hand" win is -1.
    private func judgeGame(hand: HandSignal) -> Int {
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
    
    // ˄
}

// ˅

// ˄
