import Foundation

/*
Create documents in HTML format and text format. It is possible to create different documents
in the same construction process.
*/

print("Please enter \"plain\" or \"html\":")
let inputValue = readLine()!

if inputValue == "plain" {
    let plainTextBuilder: PlainTextBuilder = PlainTextBuilder()
    let director: Director = Director(builder: plainTextBuilder)
    director.build()
    let content: String = plainTextBuilder.getContent()
    print(content)
}
else if inputValue == "html" {
    let htmlBuilder: HTMLBuilder = HTMLBuilder()
    let director: Director = Director(builder: htmlBuilder)
    director.build()
    let fileName = htmlBuilder.getFileName()
    print("\(fileName) has been created.")
    let fm = FileManager.default
    print("Output File: \(fm.currentDirectoryPath)/\(fileName)")
}
else {
    print("The value is not \"plain\" or \"html\".")
    exit(1)
}
