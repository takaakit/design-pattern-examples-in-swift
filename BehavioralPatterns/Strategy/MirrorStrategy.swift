// ˅

// ˄

// Mirror Strategy: showing a hand signal from the previous opponent's hand signal.
public class MirrorStrategy: Strategy {
    // ˅
    
    // ˄

    private var preOpponentsHand: HandSignal = HandSignal.getHand(handValue: HandSignal.ROCK)
    // ˅
    
    // ˄

    public init() {
        // ˅
        
        // ˄
    }

    public func showHandSignal() -> HandSignal {
        // ˅
        return preOpponentsHand
        // ˄
    }

    public func notifyGameResult(result: GameResultType, ownHand: HandSignal, opponentsHand: HandSignal) {
        // ˅
        preOpponentsHand = opponentsHand
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
