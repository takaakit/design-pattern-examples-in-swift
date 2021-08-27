// ˅

// ˄

public protocol Strategy {

    // Show a hand signal.
    func showHandSignal() -> HandSignal

    // Notify a game result.
    func notifyGameResult(result: GameResultType, ownHand: HandSignal, opponentsHand: HandSignal)

    // ˅
    
    // ˄
}

// ˅

// ˄
