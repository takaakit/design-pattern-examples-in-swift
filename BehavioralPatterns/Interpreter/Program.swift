// ˅

// ˄

// A node corresponding to "program".
public class Program: Node {
    // ˅

    // ˄

    private var commandList: Node? = nil
    // ˅

    // ˄

    public func parse(context: Context) {
        // ˅
        context.slideToken(token: "program")
        commandList = CommandList()
        commandList!.parse(context: context)
        // ˄
    }

    public func toString() -> String {
        // ˅
        if commandList != nil {
            return "[program " + commandList!.toString() + "]"
        }
        else {
            return ""
        }
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
