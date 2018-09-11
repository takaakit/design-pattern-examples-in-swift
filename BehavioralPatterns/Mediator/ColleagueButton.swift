// ˅
import Cocoa

// ˄

public class ColleagueButton: NSButton, Colleague {
    // ˅
    
    // ˄

    public var mediator: Mediator?
    // ˅
    
    // ˄

    public required init?(coder: NSCoder) {
        // ˅
        super.init(coder: coder)
        self.target = self
        self.action = #selector(ColleagueButton.pushed)
        // ˄
    }

    // Set enable/disable from the Mediator
    public func setActivation(isEnable: Bool) {
        // ˅
        super.isEnabled = isEnable
        // ˄
    }

    @objc private func pushed() {
        // ˅
        mediator?.colleagueChanged()
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
