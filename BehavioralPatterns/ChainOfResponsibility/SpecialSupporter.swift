// ˅

// ˄

public class SpecialSupporter: Supporter {
    // ˅

    // ˄

    private let targetId: Int

    public init(name: String, targetId: Int) {
        // ˅
        self.targetId = targetId
        super.init(name: name)
        // ˄
    }

    // Troubles with the specific ID are handled.
    public override func canHandle(trouble: Trouble) -> Bool {
        // ˅
        return trouble.id == targetId
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
