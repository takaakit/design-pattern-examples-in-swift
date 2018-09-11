import Foundation

/*
Analyze the syntax of the mini-language composed of "forward", "left", "right", and "repeat" commands.

-----
Examples before and after syntax analysis.
* Ex.1
Before : "program end"
After  : [program []]

* Ex.2
Before : "program forward right left end"
After  : [program [forward, right, left]]

* Ex.3
Before : "program repeat 4 forward right end end"
After  : [program [[repeat 4 [forward, right]]]]
*/

if let path: String = Bundle.main.path(forResource: "program", ofType: "txt") {
    do {
        let contents = try String(contentsOfFile: path, encoding: .utf8)
        let lines = contents.components(separatedBy: .newlines)
        for line in lines {
            if line.count != 0 {
                print("TEXT > \"" + line + "\"")
                let node = Program()
                node.parse(context: Context(text: line))
                print("NODE > " + node.toString())
            }
        }
    }
    catch{
        print("File read error.")
    }
}
else {
    print("File not found.")
}

exit(0)
