import Foundation

/*
A dice game in which money increases and decreases:
* A gamer shakes a dice and the number determine the next state.
* If the number of dice is even, gamer's money doubles, and if it is odd, gamer's money is halved.
* If the gamer's money is less than half of the highest amount, it returns to the highest amount.
* The game is repeated.
*/

let gamer = Gamer(money: 100)               // The initial money is 100
var memento = gamer.createMemento()         // Save the initial state

for i in 1...10 {
    print("==== Turn \(i)")                 // Display count

    gamer.play()                            // Play a game

    // Determine the behavior of the Memento
    if gamer.money > memento.money {
        print("(Gamers' money is the highest ever, so record the current state.)")
        memento = gamer.createMemento()
    }
    else if gamer.money < memento.money / 2 {
        print("(Gamer's money is less than half of the highest amount, so return to the recorded state.)")
        gamer.setMemento(memento: memento)
        print("Gamer's money returns to \(gamer).")
    }

    print("")

    sleep(1);
}
