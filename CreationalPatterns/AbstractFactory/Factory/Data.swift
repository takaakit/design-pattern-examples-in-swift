// ˅

// ˄

public class Data: Item {
    // ˅
    
    // ˄

    public var items: [Item]
    // ˅
    
    // ˄

    public override init(name: String) {
        // ˅
        self.items = [Item]()
        super.init(name: name)
        // ˄
    }

    public func add(item: Item) {
        // ˅
        items.append(item)
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
