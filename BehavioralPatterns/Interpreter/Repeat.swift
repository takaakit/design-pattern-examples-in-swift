// ˅

// ˄

// A node corresponding to "repeat".
public class Repeat: Node {
    // ˅

    // ˄

    private var number: Int = 0
    // ˅

    // ˄

    private var commandList: Node? = nil
    // ˅

    // ˄

    public func parse(context: Context) {
        // ˅
        context.slideToken(token: "repeat")

        number = context.getNumber()!
        context.slideToken(token: String(number))

        let aCommandList = CommandList()
        aCommandList.parse(context: context)
        self.commandList = aCommandList // Hold the parsed command list
        // ˄
    }

    public func toString() -> String {
        // ˅
        return "repeat \(String(number)) \(commandList!.toString())"
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
