// ˅

// ˄

public class DaytimeState: State {
    // ˅
    
    // ˄

    private static let instance: DaytimeState = DaytimeState()

    public class func getInstance() -> DaytimeState {
        // ˅
        return instance
        // ˄
    }

    private init() {
        // ˅
        
        // ˄
    }

    public func setTime(context: Context, hour: Int) {
        // ˅
        if hour < 9 || 17 <= hour {
            context.changeState(state: NightState.getInstance())
        }
        // ˄
    }

    public func use(context: Context) {
        // ˅
        context.recordSecurityLog(msg: "Use a safe in the daytime")
        // ˄
    }

    public func alarm(context: Context) {
        // ˅
        context.callSecurityGuardsRoom(msg: "Sound a emergency bell in the daytime")
        // ˄
    }

    public func phone(context: Context) {
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
