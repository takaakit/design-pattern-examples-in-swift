import Cocoa
import Foundation

// Safe security system that the security status changes with time.

@NSApplicationMain
public class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet private weak var window: NSWindow!

    @IBOutlet weak var appSafe: AppSafe!
    
    public func applicationDidFinishLaunching(_ aNotification: Notification) {
        window.title = "State Example"
    }
}
