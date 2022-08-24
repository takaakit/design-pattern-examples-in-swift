// ˅
import Foundation

// ˄

// A node corresponding to "forward", "left", and "right".
public class Action: Node {
    // ˅

    // ˄

    private var name: String = ""
    // ˅

    // ˄

    public func parse(context: Context) {
        // ˅
        let currentToken = context.getToken()
        if currentToken != "forward" && currentToken != "right" && currentToken != "left" {
            print("\(currentToken) is unknown")
            exit(1)
        }

        self.name = currentToken    // Hold the current token as this action name

        context.slideToken(token: currentToken)
        // ˄
    }

    public func toString() -> String {
        // ˅
        return name
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
