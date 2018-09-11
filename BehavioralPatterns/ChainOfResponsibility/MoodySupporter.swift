// ˅

// ˄

public class MoodySupporter: Supporter {
    // ˅

    // ˄

    public override init(name: String) {
        // ˅
        super.init(name: name)
        // ˄
    }

    // Troubles with an odd ID are handled.
    public override func handle(trouble: Trouble) -> Bool {
        // ˅
        return trouble.id % 2 == 1
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
