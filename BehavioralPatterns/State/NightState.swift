// ˅

// ˄

public class NightState: State {
    // ˅
    
    // ˄

    // Set time
    public func setTime(context: Context, hour: Int) {
        // ˅
        if 9 <= hour && hour < 17 {
            context.changeState(state: DaytimeState())
        }
        // ˄
    }

    // Use a safe
    public func useSafe(context: Context) {
        // ˅
        context.callSecurityGuardsRoom(msg: "Emergency: Use a safe at night!")
        // ˄
    }

    // Sound a emergency bell
    public func soundBell(context: Context) {
        // ˅
        context.callSecurityGuardsRoom(msg: "Sound a emergency bell at night")
        // ˄
    }

    // Make a normal call
    public func call(context: Context) {
        // ˅
        context.recordSecurityLog(msg: "Record a night call")
        // ˄
    }

    public func toString() -> String {
        // ˅
        return "[Night]"
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
