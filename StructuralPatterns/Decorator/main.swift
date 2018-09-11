import Foundation

// Display a character string with a decorative frame.

let displayA: Display = MessageDisplay(message: "Nice to meet you.")
displayA.show()

let displayB: Display = SideFrame(display: displayA, frameChar: "!")
displayB.show()

let displayC: Display = FullFrame(display: displayB)
displayC.show()

let displayD: Display = SideFrame(
    display: FullFrame(
        display: FullFrame(
            display: SideFrame(
                display: SideFrame(
                    display: FullFrame(
                        display: MessageDisplay(message: "See you again.")
                    ),
                    frameChar: "#"
                ),
                frameChar: "#"
            )
        )
    ),
    frameChar: "#"
)
displayD.show()

exit(0)
