// ˅

// ˄

public protocol State {

    func setTime(context: Context, hour: Int)

    func use(context: Context)

    func alarm(context: Context)

    func phone(context: Context)

    func toString() -> String

    // ˅
    
    // ˄
}

// ˅

// ˄
