import Foundation

// Display a character string enclosed with a frame line, or drawn with an underline.

// Create a manager
let manager = Manager()
let emphasisUnderline = UnderlineDisplay(underlineChar: "~")
let highlightFrame = FrameDisplay(borderChar: "+")
let warningFrame = FrameDisplay(borderChar: "#")
manager.registerDisplay(displayName: "emphasis", display: emphasisUnderline)
manager.registerDisplay(displayName: "highlight", display: highlightFrame)
manager.registerDisplay(displayName: "warning", display: warningFrame)

// Create displays
let display1 = manager.getDisplay(displayName: "emphasis")
display1?.show(message: "Nice to meet you.")
let display2 = manager.getDisplay(displayName: "highlight")
display2?.show(message: "Nice to meet you.")
let display3 = manager.getDisplay(displayName: "warning")
display3?.show(message: "Nice to meet you.")

exit(0)
