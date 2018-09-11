import Foundation

// Create documents in HTML format and text format.

func showUsage() {
    print("Ex.1 : builder plain      <- Create a document in plain text.")
    print("Ex.2 : builder html       <- Create a document in HTML.")
}

let argv = ProcessInfo.processInfo.arguments
if argv.count != 2 {
    showUsage()
}
else if argv[1] == "plain" {
    let plainTextBuilder: PlainTextBuilder = PlainTextBuilder()
    let director: Director = Director(builder: plainTextBuilder)
    director.build()
    let content: String = plainTextBuilder.result
    print(content)
}
else if argv[1] == "html" {
    let htmlBuilder: HTMLBuilder = HTMLBuilder()
    let director: Director = Director(builder: htmlBuilder)
    director.build()
    let filename = htmlBuilder.result
    print(filename + " has been created.")
}
else {
    showUsage()
}

exit(0)
