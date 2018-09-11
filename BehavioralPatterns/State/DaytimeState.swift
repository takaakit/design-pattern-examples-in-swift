// ˅

// ˄

public class DaytimeState: State {
    // ˅
    
    // ˄

    // Set time
    public func setTime(context: Context, hour: Int) {
        // ˅
        if hour < 9 || 17 <= hour {
            context.changeState(state: NightState())
        }
        // ˄
    }

    // Use a safe
    public func useSafe(context: Context) {
        // ˅
        context.recordSecurityLog(msg: "Use a safe in the daytime")
        // ˄
    }

    // Sound a emergency bell
    public func soundBell(context: Context) {
        // ˅
        context.callSecurityGuardsRoom(msg: "Sound a emergency bell in the daytime")
        // ˄
    }

    // Make a normal call
    public func call(context: Context) {
        // ˅
        context.callSecurityGuardsRoom(msg: "Make a normal call in the daytime")
        // ˄
    }

    public func toString() -> String {
        // ˅
        return "[Daytime]"
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
