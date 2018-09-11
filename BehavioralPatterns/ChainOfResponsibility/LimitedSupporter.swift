// ˅

// ˄

public class LimitedSupporter: Supporter {
    // ˅

    // ˄

    private let limitId: Int

    public init(name: String, limitId: Int) {
        // ˅
        self.limitId = limitId
        super.init(name: name)
        // ˄
    }

    // Troubles with an ID below the limit are handled.
    public override func handle(trouble: Trouble) -> Bool {
        // ˅
        return trouble.id <= limitId
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
