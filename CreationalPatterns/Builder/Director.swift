// ˅

// ˄

public class Director {
    // ˅
    
    // ˄

    private let builder: Builder

    public init(builder: Builder) {
        // ˅
        self.builder = builder
        // ˄
    }

    // Construct a document
    public func build() {
        // ˅
        builder.createTitle(title: "Greeting")                                  // Title
        builder.createSection(section: "Morning and Afternoon")                 // Section
        builder.createItems(items: ["Good morning.", "Hello."])                 // Items
        builder.createSection(section: "Evening")                               // Other section
        builder.createItems(items: ["Good evening.", "Good night.", "Goodbye."])// Other items
        builder.close()
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
