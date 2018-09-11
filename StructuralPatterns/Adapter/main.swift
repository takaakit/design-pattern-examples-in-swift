import Foundation

/*
Display a character string as follows
  -- Nice to meet you --
or display it as follows.
  [[ Nice to meet you ]]
*/

let p: Print = PrintMessageDisplay(message: "Nice to meet you")
p.printWeak()
p.printStrong()

exit(0)
