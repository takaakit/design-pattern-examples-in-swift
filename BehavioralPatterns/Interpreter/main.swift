import Foundation

/*
An interpreter for mini language to operate radio controlled car. It parses the following syntax
composed of "forward", "left", "right", and "repeat" commands:
```
<program>      ::= program <command list>
<command list> ::= <command>* end
<command>      ::= <repeat> | <action>
<repeat>       ::= repeat <number> <command list>
<action>       ::= forward | right | left
<number>       ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
```
___
Examples before and after syntax analysis.

Ex.1
```
Before parsing : program end
After parsing  : [program []]
```

Ex.2
```
Before parsing : program forward right left end
After parsing  : [program [forward, right, left]]
```

Ex.3
```
Before parsing : program repeat 4 forward right end end
After parsing  : [program [repeat 4 [forward, right]]]
```
*/

if let path: String = Bundle.main.path(forResource: "program", ofType: "txt") {
    do {
        let contents = try String(contentsOfFile: path, encoding: .utf8)
        let lines = contents.components(separatedBy: .newlines)
        for line in lines {
            if line.count != 0 {
                print("Before parsing : \(line)")
                let node = Program()
                node.parse(context: Context(text: line))
                print("After parsing  : \(node.toString())")
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
