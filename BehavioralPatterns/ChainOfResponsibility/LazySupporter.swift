// ˅

// ˄

public class LazySupporter: Supporter {
    // ˅

    // ˄

    public override init(name: String) {
        // ˅
        super.init(name: name)
        // ˄
    }

    // No troubles are handled.
    public override func canHandle(trouble: Trouble) -> Bool {
        // ˅
        return false
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
