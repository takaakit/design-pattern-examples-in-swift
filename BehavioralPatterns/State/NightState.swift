// ˅

// ˄

public class NightState: State {
    // ˅
    
    // ˄

    private static let instance: NightState = NightState()

    public class func getInstance() -> NightState {
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
        if 9 <= hour && hour < 17 {
            context.changeState(state: DaytimeState.getInstance())
        }
        // ˄
    }

    public func use(context: Context) {
        // ˅
        context.callSecurityGuardsRoom(msg: "Emergency: Use a safe at night!")
        // ˄
    }

    public func alarm(context: Context) {
        // ˅
        context.callSecurityGuardsRoom(msg: "Sound a emergency bell at night")
        // ˄
    }

    public func phone(context: Context) {
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
