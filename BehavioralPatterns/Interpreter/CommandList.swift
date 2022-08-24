// ˅
import Foundation

// ˄

public class CommandList: Node {
    // ˅

    // ˄

    private var nodes: [Node] = []
    // ˅
    
    // ˄

    public func parse(context: Context) {
        // ˅
        while true {
            if context.getToken() == "" {
                print("Missing 'end'")
                exit(1)
            }
            else if context.getToken() == "end" {
                context.slideToken(token: "end")
                break
            }
            else {
                let aNone = Command()
                aNone.parse(context: context)
                nodes.append(aNone) // Hold the parsed node
            }
        }
        // ˄
    }

    public func toString() -> String {
        // ˅
        var strNodes: String = "["
        for i in 0..<nodes.count {
            strNodes += nodes[i].toString()
            if i < nodes.count - 1 {
                strNodes += ", "
            }
        }
        strNodes += "]"
        return strNodes
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
