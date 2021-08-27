// ˅
import Foundation

// ˄

public class LargeSizeChar {
    // ˅
    
    // ˄

    // Display data of the large size character
    private var displayData: String = ""
    // ˅
    
    // ˄

    public init(charName: UnicodeScalar) {
        // ˅
        if let path = Bundle.main.path(forResource: "big\(String(charName))", ofType: "txt") {
            do {
                self.displayData = try String(contentsOfFile: path, encoding: .utf8)
            }
            catch {
                self.displayData = String(charName) + "?"
            }
        }
        else {
            self.displayData = String(charName) + "?"
        }
        // ˄
    }

    // Display the large size character
    public func display() {
        // ˅
        print(displayData)
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
