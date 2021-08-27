import Cocoa

/*
Simple drawing application:
* Draw a path with points by dragging the mouse.
* Revert to one previous drawing by pressing the Undo button.
* Erase all drawing by pressing the Clear button.
*/

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet private weak var window: NSWindow!

    @IBOutlet private weak var appMain: AppMain!

    public func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }

    public func applicationDidFinishLaunching(_ aNotification: Notification) {
        window.title = "Command Example"
    }
}

