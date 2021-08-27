import Cocoa
import Foundation

/*
Safe security system that the security status changes with time. When you press a button in a dialog,
the message displayed will change depending on whether the time is day or night.
The internal time of the dialog advances one hour for every second of real time.
*/

@NSApplicationMain
public class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet private weak var window: NSWindow!

    @IBOutlet private weak var appSafe: AppSafe!

    public func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }

    public func applicationDidFinishLaunching(_ aNotification: Notification) {
        window.title = "State Example"
    }
}
