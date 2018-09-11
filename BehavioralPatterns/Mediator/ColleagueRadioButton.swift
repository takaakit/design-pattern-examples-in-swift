// ˅
import Cocoa

// ˄

public class ColleagueRadioButton: NSButtonCell, Colleague {
    // ˅
    
    // ˄

    public var mediator: Mediator?
    // ˅
    
    // ˄

    public required init(coder: NSCoder) {
        // ˅
        super.init(coder: coder)
        self.target = self
        self.action = #selector(ColleagueRadioButton.selected)
        // ˄
    }

    // Set enable/disable from the Mediator
    public func setActivation(isEnable: Bool) {
        // ˅
        
        // ˄
    }

    @objc private func selected() {
        // ˅
        mediator?.colleagueChanged()
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
