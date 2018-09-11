import Foundation

// At the time of printing, create an instance of the printer for the first time.
// In order to spend time creating a printer, call a heavy task when creating a printer instance.

let p = PrinterProxy(name: "Emily's printer")
print("The current printer is " + p.printerName + ".")
p.printerName = "William's printer"
print("The current printer is " + p.printerName + ".")
p.output(content: "Nice to meet you.")

exit(0)
