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
    private var state: State = DaytimeState.getInstance()
    // ˅
    
    // ˄

    // Current time
    @IBOutlet private weak var textTime: NSTextField!
    // ˅
    
    // ˄

    // Display of security center
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
        print("The state changed from \(self.state.toString()) to \(state.toString()).")
        self.state = state
        // ˄
    }

    public func callSecurityGuardsRoom(msg: String) {
        // ˅
        textMessage.insertText("call! \(msg)\n", replacementRange: NSMakeRange(-1, 0))
        // ˄
    }

    public func recordSecurityLog(msg: String) {
        // ˅
        textMessage.insertText("record ... \(msg)\n", replacementRange: NSMakeRange(-1, 0))
        // ˄
    }

    @IBAction public func pushUseButton(sender: Any) {
        // ˅
        state.use(context: self as Context)
        // ˄
    }

    @IBAction public func pushAlarmButton(sender: Any) {
        // ˅
        state.alarm(context: self as Context)
        // ˄
    }

    @IBAction public func pushPhoneButton(sender: Any) {
        // ˅
        state.phone(context: self as Context)
        // ˄
    }

    public func setTime(hour: Int) {
        // ˅
        var clockString: String = "Current Time : "
        if hour < 10 {
            clockString += "0\(String(currentTime)):00"
        }
        else {
            clockString += "\(String(currentTime)):00"
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
