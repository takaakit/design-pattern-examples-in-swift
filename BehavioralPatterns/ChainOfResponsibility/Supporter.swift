// ˅

// ˄

public class Supporter {
    // ˅

    // ˄

    // Supporter name
    private let name: String

    // Next supporter
    private var next: Supporter? = nil
    // ˅

    // ˄

    public init(name: String) {
        // ˅
        self.name = name
        // ˄
    }

    // Trouble support
    // Troubles are sent around.
    public func support(trouble: Trouble) {
        // ˅
        if (handle(trouble: trouble) == true) {
            supported(trouble: trouble)
        }
        else if (next != nil) {
            next?.support(trouble: trouble)
        }
        else {
            unsupported(trouble: trouble)
        }
        // ˄
    }

    // Set a next supporter.
    public func setNext(next: Supporter) -> Supporter? {
        // ˅
        self.next = next
        return next
        // ˄
    }

    public func toString() -> String {
        // ˅
        return "[\(name)]"
        // ˄
    }

    public func handle(trouble: Trouble) -> Bool {
        // ˅
        return false
        // ˄
    }

    // Trouble was supported.
    private func supported(trouble: Trouble) {
        // ˅
        print("\(trouble.toString()) was handled by \(self.toString()).")
        // ˄
    }

    // Trouble was unsupported.
    private func unsupported(trouble: Trouble) {
        // ˅
        print("\(trouble.toString()) was not handled.");
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
