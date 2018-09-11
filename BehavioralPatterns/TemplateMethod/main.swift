import Foundation

// Display the character and string repeatedly 5 times.

let display1 = CharDisplay(chText: "H")                      // Create an instance of the CharDisplay
let display2 = StringDisplay(strText: "Hello world.")        // Create an instance of the StringDisplay
let display3 = StringDisplay(strText: "Nice to meet you.")   // Create an instance of the StringDisplay

// Any instace can be called with the same method name
display1.output()
display2.output()
display3.output()

exit(0)
