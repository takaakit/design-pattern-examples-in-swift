import Foundation

/*
A game of rock-scissors-paper.
There are two strategies below.

* When winning a game, show the same hand at the next time.
* Calculate a hand from the previous hand stochastically.
*/

let argv = ProcessInfo.processInfo.arguments
if argv.count != 3 {
    print("User: strategy RandomSeedNumber1 RandomSeedNumber2")
    print("User: strategy 314 15")
}
else {
    let randomSeed1: Int? = Int(argv[1])
    let randomSeed2: Int? = Int(argv[2])
    if randomSeed1 == nil || randomSeed2 == nil {
        print("The command line argument is illegal.")
        exit(1)
    }
    let player1 = Player(name: "Emily", strategy: StrategyA(randomSeed: randomSeed1!))
    let player2 = Player(name: "James", strategy: StrategyB(randomSeed: randomSeed2!))
    
    for _ in 0..<99 {
        let nextHand1 = player1.nextHand()
        let nextHand2 = player2.nextHand()
        if nextHand1.isStrongerThan(hand: nextHand2) {
            print("Winner: " + player1.toString())
            player1.won()
            player2.lost()
        }
        else if nextHand2.isStrongerThan(hand: nextHand1) {
            print("Winner: " + player2.toString())
            player1.lost()
            player2.won()
        }
        else {
            print("Draw...")
            player1.drew()
            player2.drew()
        }
    }
    print("RESULT:")
    print(player1.toString())
    print(player2.toString())
}

exit(0)
