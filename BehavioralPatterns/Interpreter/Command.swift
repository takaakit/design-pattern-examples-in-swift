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
        let aNode: Node
        if context.getToken() == "repeat" {
            aNode = Repeat()
            aNode.parse(context: context)
        }
        else {
            aNode = Action()
            aNode.parse(context: context)
        }

        self.node = aNode   // Hold the parsed node
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
