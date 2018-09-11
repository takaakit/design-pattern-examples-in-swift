// ˅

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
                print("WARNING: " + "Failed to parse")
                return
            }
            else if context.getToken() == "end" {
                context.slideToken(token: "end")
                break
            }
            else {
                let commandNode = Command()
                commandNode.parse(context: context)
                nodes.append(commandNode)
            }
        }
        // ˄
    }

    public func toString() -> String {
        // ˅
        var strNodes: String = ""
        for i in 0..<nodes.count {
            strNodes += nodes[i].toString()
            if i < nodes.count - 1 {
                strNodes += ", "
            }
        }
        return strNodes
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
