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

    // Show a hand signal from the strategy.
    public func showHandSignal() -> HandSignal {
        // ˅
        return strategy.showHandSignal()
        // ˄
    }

    // Notify a game result.
    public func notifyGameResult(result: GameResultType, ownHand: HandSignal, opponentsHand: HandSignal) {
        // ˅
        switch result {
        case GameResultType.win:
            winCount += 1
            gameCount += 1
        case GameResultType.loss:
            lossCount += 1
            gameCount += 1
        case GameResultType.draw:
            gameCount += 1
        }

        strategy.notifyGameResult(result: result, ownHand: ownHand, opponentsHand: opponentsHand)
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
