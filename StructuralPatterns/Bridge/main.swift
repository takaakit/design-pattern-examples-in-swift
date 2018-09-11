import Foundation

// Display only one line or display the specified number of lines.

let d1: Display = Display(impl: TextDisplayImpl(text: "Japan"))
let d2: MultiLineDisplay = MultiLineDisplay(impl: TextDisplayImpl(text: "The United States of America"))
let d3: MultiLineDisplay = MultiLineDisplay(impl: TextDisplayImpl(text: "Brazil"))
d1.display()
d2.display()
d3.display()
d3.displayMultiple(times: 3)

exit(0)
