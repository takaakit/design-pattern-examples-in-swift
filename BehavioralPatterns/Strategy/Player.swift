// ˅

// ˄

public class Player {
    // ˅
    
    // ˄

    private let name: String

    private var winCount: Int = 0
    // ˅
    
    // ˄

    private var lossCount: Int = 0
    // ˅
    
    // ˄

    private var gameCount: Int = 0
    // ˅
    
    // ˄

    private let strategy: Strategy

    public init(name: String, strategy: Strategy) {
        // ˅
        self.name = name
        self.strategy = strategy
        // ˄
    }

    // Calculate a hand from the strategy.
    public func nextHand() -> Hand {
        // ˅
        return strategy.nextHand()
        // ˄
    }

    // Won a game.
    public func won() {
        // ˅
        strategy.learn(win: true)
        winCount += 1
        gameCount += 1
        // ˄
    }

    // Lost a game.
    public func lost() {
        // ˅
        strategy.learn(win: false)
        lossCount += 1
        gameCount += 1
        // ˄
    }

    // Drew a game.
    public func drew() {
        // ˅
        gameCount += 1
        // ˄
    }

    public func toString() -> String {
        // ˅
        return name + " [" + String(gameCount) + " games, " + String(winCount) + " won, " + String(lossCount) + " lost, " + String(gameCount - winCount - lossCount) + " drew]"
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
