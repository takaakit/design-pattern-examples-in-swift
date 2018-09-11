// ˅

// ˄

public class Command: Node {
    // ˅

    // ˄

    private var node: Node? = nil
    // ˅

    // ˄

    public func parse(context: Context) {
        // ˅
        if context.getToken() == "repeat" {
            node = Repeat()
        }
        else {
            node = Action()
        }
        node!.parse(context: context)
        // ˄
    }

    public func toString() -> String {
        // ˅
        return node!.toString()
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
