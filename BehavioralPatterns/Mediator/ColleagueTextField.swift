// ˅
import Cocoa

// ˄

public class ColleagueTextField: NSTextField, Colleague, NSTextFieldDelegate {
    // ˅
    
    // ˄

    public var mediator: Mediator?
    // ˅
    
    // ˄

    public required init?(coder: NSCoder) {
        // ˅
        super.init(coder: coder)
        super.delegate = self
        // ˄
    }

    // Set enable/disable from the Mediator
    public func setActivation(isEnable: Bool) {
        // ˅
        self.isEnabled = isEnable
        // ˄
    }

    public func controlTextDidChange(_ obj: Notification) {
        // ˅
        mediator?.colleagueChanged()
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
