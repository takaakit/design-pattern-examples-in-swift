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

    // Acquired desserts 
    private var desserts: [String]
    // ˅

    // ˄

    // Dessert name table
    private static let dessertsName: [String] = ["Cake", "Candy", "Cookie"]

    // Get a dessert
    private var dessert: String
    // ˅
    {
        get {
            var prefix: String = ""
            #if os(Linux)
            srandom(UInt32(2))
            if random() % 2 == 0 {
                prefix = "Delicious "
            }
            srandom(UInt32(Gamer.dessertsName.count))
            return prefix + Gamer.dessertsName[Int(random()) % 3]
            #else
            srandom(UInt32(2))
            if arc4random() % 2 == 0 {
                prefix = "Delicious "
            }
            srandom(UInt32(Gamer.dessertsName.count))
            return prefix + Gamer.dessertsName[Int(arc4random()) % 3]
            #endif
        }
    }
    // ˄

    public init(money: Int) {
        // ˅
        self.money = money
        self.desserts = [String]()
        // ˄
    }

    // Get current status
    public func createMemento() -> Memento {
        // ˅
        let memento: Memento = Memento(money: money)
        for dessert in desserts {
            if dessert.hasPrefix("Delicious ") {    // Add a only delicious dessert
                memento.addDessert(dessert: dessert)
            }
        }
        return memento
        // ˄
    }

    // Undo status
    public func restoreMemento(memento: Memento) {
        // ˅
        self.money = memento.money
        self.desserts = memento.desserts
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
        // In case of 1...Gamer's money increases
        if dice == 1 {
            money += 100
            print("Gamer's money increases.")
        }
        // In case of 2...Gamer's money halves
        else if dice == 2 {
            money /= 2
            print("Gamer's money halves.")
        }
        // In case of 6...Gamer gets desserts
        else if dice == 6 {
            let acquiredDessert: String = dessert
            print("Gamer gets desserts(\(acquiredDessert))")
            desserts.append(acquiredDessert)
        }
        // Other...Nothing happens
        else {
            print("Nothing happens.")
        }
        // ˄
    }

    public func toString() -> String {
        // ˅
        return "[money = \(money), desserts = \(desserts)]"
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
