// ˅
#if os(Linux)
import Foundation
#else
import Cocoa
#endif

// ˄

public class Gamer {
    // ˅

    // ˄

    // Gamer's money
    public var money: Int
    // ˅
    
    // ˄

    public init(money: Int) {
        // ˅
        self.money = money
        // ˄
    }

    public func createMemento() -> Memento {
        // ˅
        return Memento(money: money)
        // ˄
    }

    public func setMemento(memento: Memento) {
        // ˅
        self.money = memento.money
        // ˄
    }

    // Play a game
    public func play() {
        // ˅
        srandom(UInt32(time(nil)))
        #if os(Linux)
        let dice: Int = Int(random()) % 6 + 1    // Shake a dice
        #else
        let dice: Int = Int(arc4random()) % 6 + 1    // Shake a dice
        #endif

        print("The number of dice is \(dice).")

        let preMoney: Int = money
        switch dice {
        case 1, 3, 5:
            // In case of odd...Money is halved
            money /= 2
            print("Gamer's money is halved: \(preMoney) -> \(money)")
        case 2, 4, 6:
            // In case of even...Money doubles
            money *= 2
            print("Gamer's money doubles: \(preMoney) -> \(money)")
        default:
            // Other...Exit
            print("Unexpected value.")
            exit(1)
        }
        // ˄
    }

    public func toString() -> String {
        // ˅
        return "[money = \(money)]"
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
