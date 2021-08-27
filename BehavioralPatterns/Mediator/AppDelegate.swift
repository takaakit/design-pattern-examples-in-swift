import Cocoa

/*
Show a login dialog for entering a username and password. The dialog has the following elements:
* "Guest" and "Login" radio buttons
* "Username" and "Password" text fields
* "OK" and "Cancel" buttons

And change the editable properties of the elements depending on the state of the radio buttons and text fields.
*/

@NSApplicationMain
public class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet private weak var window: NSWindow!

    @IBOutlet private weak var appLogin: AppLogin!

    public func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }

    public func applicationDidFinishLaunching(_ aNotification: Notification) {
        window.title = "Mediator Example"
        appLogin.createColleagues()
    }
}
