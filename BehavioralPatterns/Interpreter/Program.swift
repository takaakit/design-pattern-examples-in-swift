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

        let aCommandList = CommandList()
        aCommandList.parse(context: context)

        self.commandList = aCommandList // Hold the parsed command list
        // ˄
    }

    public func toString() -> String {
        // ˅
        if commandList != nil {
            return "[program \(commandList!.toString())]"
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
