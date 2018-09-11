import Cocoa

// Login dialog for entering a username and password.

@NSApplicationMain
public class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet private weak var window: NSWindow!

    @IBOutlet weak var appLogin: AppLogin!
    
    public func applicationDidFinishLaunching(_ aNotification: Notification) {
        window.title = "Mediator Example"
        appLogin.createColleagues()
    }
}
