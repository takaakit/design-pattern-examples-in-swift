// ˅

// ˄

// A node corresponding to "forward", "left", and "right".
public class Action: Node {
    // ˅

    // ˄

    private var name: String? = nil
    // ˅

    // ˄

    public func parse(context: Context) {
        // ˅
        name = context.getToken()
        context.slideToken(token: name!)
        if name != "forward" && name != "right" && name != "left" {
            print("WARNING: " + "Failed to parse")
            return
        }
        // ˄
    }

    public func toString() -> String {
        // ˅
        return name!
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
