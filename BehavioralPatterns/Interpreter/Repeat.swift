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
        context.nextToken()
        commandList = CommandList()
        commandList!.parse(context: context)
        // ˄
    }

    public func toString() -> String {
        // ˅
        return "[repeat " + String(number) + " " + commandList!.toString() + "]"
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
