// ˅

// ˄

public protocol Context {

    // Set time
    func setTime(hour: Int)

    // Change state
    func changeState(state: State)

    // Call a security guard room
    func callSecurityGuardsRoom(msg: String)

    // Record security log
    func recordSecurityLog(msg: String)

    // ˅
    
    // ˄
}

// ˅

// ˄
