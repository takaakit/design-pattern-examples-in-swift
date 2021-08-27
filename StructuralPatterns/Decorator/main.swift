import Foundation

/*
Display a string with decorative frames. The frames can be combined arbitrarily.
*/

let displayA: Display = MessageDisplay(message: "Nice to meet you.")
displayA.show()

let displayB: Display = SideFrame(display: MessageDisplay(message: "Nice to meet you."), frameChar: "!")
displayB.show()

let displayC: Display = FullFrame(display: SideFrame(display: MessageDisplay(message: "Nice to meet you."), frameChar: "!"))
displayC.show()
