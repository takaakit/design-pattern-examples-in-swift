// ˅
import Cocoa

// ˄

public class AppSafe: NSView, Context {
    // ˅
    
    // ˄

    private var currentTime: Int = 0
    // ˅
    
    // ˄

    // Current state
    private var state: State = DaytimeState()
    // ˅
    
    // ˄

    @IBOutlet private weak var textTime: NSTextField!
    // ˅
    
    // ˄

    @IBOutlet private weak var textMessage: NSTextView!
    // ˅
    
    // ˄

    public required init?(coder: NSCoder) {
        // ˅
        super.init(coder: coder)
        
        Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(AppSafe.countUpTime),
            userInfo: nil,
            repeats: true)
        // ˄
    }

    public func changeState(state: State) {
        // ˅
        print("The state changed from " + self.state.toString() + " to " + state.toString() + ".")
        self.state = state
        // ˄
    }

    public func callSecurityGuardsRoom(msg: String) {
        // ˅
        textMessage.insertText("call! " + msg + "\n", replacementRange: NSMakeRange(-1, 0))
        // ˄
    }

    public func recordSecurityLog(msg: String) {
        // ˅
        textMessage.insertText("record ... " + msg + "\n", replacementRange: NSMakeRange(-1, 0))
        // ˄
    }

    @IBAction public func pushUseSafe(sender: Any) {
        // ˅
        state.useSafe(context: self as Context)
        // ˄
    }

    @IBAction public func pushSoundBell(sender: Any) {
        // ˅
        state.soundBell(context: self as Context)
        // ˄
    }

    @IBAction public func pushCall(sender: Any) {
        // ˅
        state.call(context: self as Context)
        // ˄
    }

    @IBAction public func pushExit(sender: Any) {
        // ˅
        exit(0)
        // ˄
    }

    private func setTime(hour: Int) {
        // ˅
        var clockString: String = "Current Time : "
        if hour < 10 {
            clockString += "0" + String(currentTime) + ":00"
        }
        else {
            clockString += String(currentTime) + ":00"
        }
        print(clockString)
        textTime.stringValue = clockString
        state.setTime(context: self, hour: hour)
        // ˄
    }

    @objc private func countUpTime() {
        // ˅
        currentTime += 1
        if currentTime > 23 {
            currentTime = 0
        }
        setTime(hour: currentTime)
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
