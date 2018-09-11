// ˅

// ˄

public protocol Colleague {

    var mediator: Mediator?
    // ˅
        { get set }
    // ˄

    // Set enable/disable from the Mediator
    func setActivation(isEnable: Bool)

    // ˅
    
    // ˄
}

// ˅

// ˄
