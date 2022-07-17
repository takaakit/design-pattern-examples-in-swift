// ˅

// ˄

// Holder of the past commands
public class HistoryCommand: Command {
    // ˅
    
    // ˄

    // A set of past commands
    private var pastCommands: [Command] = [Command]()
    // ˅
    
    // ˄

    public init() {
        // ˅
        
        // ˄
    }

    // Execute all past commands
    public func execute() {
        // ˅
        for pastCommand in pastCommands {
            pastCommand.execute()
        }
        // ˄
    }

    public func add(cmd: Command) {
        // ˅
        pastCommands.append(cmd)
        // ˄
    }

    // Delete the last command
    public func undo() {
        // ˅
        if pastCommands.count > 0 {
            pastCommands.removeLast()
        }
        // ˄
    }

    // Delete all past commands.
    public func clear() {
        // ˅
        pastCommands.removeAll()
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
