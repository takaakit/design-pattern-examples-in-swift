// ˅

// ˄

public protocol State {

    func toString() -> String

    // Set time
    func setTime(context: Context, hour: Int)

    // Use a safe
    func useSafe(context: Context)

    // Sound a emergency bell
    func soundBell(context: Context)

    // Make a normal call
    func call(context: Context)

    // ˅
    
    // ˄
}

// ˅

// ˄
