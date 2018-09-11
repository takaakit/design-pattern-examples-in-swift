import Foundation

// First, create instances for displaying large size characters, then display large size character string using that instances.

let argv = ProcessInfo.processInfo.arguments
if argv.count != 2 {
    print("Usage: flywight digits")
    print("Usage: flywight 1212123")
}
else {
    let bs = LargeSizeString(string: argv[1])
    bs.display()
}

exit(0)
