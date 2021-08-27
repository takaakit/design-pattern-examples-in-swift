import Foundation

/*
Display a string enclosed with a frame line, or drawn with an underline. The Client (Main)
registers instances of the Display subclass in the Manager class. When necessary,
the Manager class asks those registered instances to return a clone. The Client (Main)
requires the returned clones to display.
*/

let manager = Manager()

// Register instances of the "Display" subclass
let emphasisUnderline = UnderlineDisplay(underlineChar: "~")
manager.registerDisplay(displayName: "emphasis", display: emphasisUnderline)
let highlightFrame = FrameDisplay(borderChar: "+")
manager.registerDisplay(displayName: "highlight", display: highlightFrame)
let warningFrame = FrameDisplay(borderChar: "#")
manager.registerDisplay(displayName: "warning", display: warningFrame)

// Require to display
let display1 = manager.getDisplay(displayName: "emphasis")
display1?.show(message: "Nice to meet you.")
let display2 = manager.getDisplay(displayName: "highlight")
display2?.show(message: "Nice to meet you.")
let display3 = manager.getDisplay(displayName: "warning")
display3?.show(message: "Nice to meet you.")
