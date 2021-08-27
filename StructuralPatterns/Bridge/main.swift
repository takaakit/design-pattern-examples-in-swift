import Foundation

/*
Display only one line or display the specified number of lines.
*/

let d1: Display = Display(impl: TextDisplayImpl(text: "Japan"))
d1.output()

let d2: MultiLineDisplay = MultiLineDisplay(impl: TextDisplayImpl(text: "The United States of America"))
d2.output()
d2.outputMultiple(times: 3)
