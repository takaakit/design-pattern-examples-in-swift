// ˅

// ˄

public class CharDisplay: AbstractDisplay {
    // ˅
    
    // ˄

    private let chText: String

    public init(chText: String) {
        // ˅
        self.chText = chText
        // ˄
    }

    public override func open() {
        // ˅
        print("<<", terminator: "")         // Display "<<" in the start characters.
        // ˄
    }

    public override func write() {
        // ˅
        print(chText, terminator: "")       // Display the character.
        // ˄
    }

    public override func close() {
        // ˅
        print(">>")                         // Display ">>" in the end characters.
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
