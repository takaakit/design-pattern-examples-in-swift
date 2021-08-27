import Foundation

/*
Print on a named printer. Setting and changing the printer name is done by Proxy (ProxyPrinter).
At the time of printing, create an instance of the RealSubject (RealPrinter) for the first time.
*/

let p = ProxyPrinter(name: "PRINTER-A")
print("The current printer is \(p.getName()).")
p.changeName(name: "PRINTER-B")
print("The current printer is \(p.getName()).")

print("Print start.")
p.output(content: "Nice to meet you.")
print("Print exit.")
