// ˅
import Foundation

// ˄

public class LargeSizeChar {
    // ˅
    
    // ˄

    private let charName: UnicodeScalar

    // Display data of the large size character
    private var displayData: String = ""
    // ˅
    
    // ˄

    public init(charName: UnicodeScalar) {
        // ˅
        self.charName = charName
        
        if let path = Bundle.main.path(forResource: "big" + String(charName), ofType: "txt") {
            do {
                self.displayData = try String(contentsOfFile: path, encoding: .utf8)
            }
            catch {
                self.displayData = String(self.charName) + "?"
            }
        }
        else {
            self.displayData = String(self.charName) + "?"
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
