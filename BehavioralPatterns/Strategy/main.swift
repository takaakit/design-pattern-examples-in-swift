import Foundation

/*
A game of rock-scissors-paper. Two strategies are available:
* Random Strategy: showing a random hand signal.
* Mirror Strategy: showing a hand signal from the previous opponent's hand signal.
*/

let player1 = Player(name: "Emily", strategy: RandomStrategy())
let player2 = Player(name: "James", strategy: MirrorStrategy())

for _ in 0..<100 {
    let handOfPlayer1 = player1.showHandSignal()
    let handOfPlayer2 = player2.showHandSignal()

    // Judge win, loss, or draw
    var resultOfPlayer1: GameResultType
    var resultOfPlayer2: GameResultType
    if handOfPlayer1.isStrongerThan(hand: handOfPlayer2) {
        print("Winner: " + player1.toString())
        resultOfPlayer1 = GameResultType.win
        resultOfPlayer2 = GameResultType.loss
    }
    else if handOfPlayer2.isStrongerThan(hand: handOfPlayer1) {
        print("Winner: " + player2.toString())
        resultOfPlayer1 = GameResultType.loss
        resultOfPlayer2 = GameResultType.win
    }
    else {
        print("Draw...")
        resultOfPlayer1 = GameResultType.draw
        resultOfPlayer2 = GameResultType.draw
    }

    player1.notifyGameResult(result: resultOfPlayer1, ownHand: handOfPlayer1, opponentsHand: handOfPlayer2)
    player2.notifyGameResult(result: resultOfPlayer2, ownHand: handOfPlayer2, opponentsHand: handOfPlayer1)
}
print("RESULT:")
print(player1.toString())
print(player2.toString())
