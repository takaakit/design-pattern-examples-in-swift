import Cocoa

// Simple drawing application.

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    @IBOutlet weak var appMain: AppMain!
    
    public func applicationDidFinishLaunching(_ aNotification: Notification) {
        window.title = "Command Example"
    }
}

