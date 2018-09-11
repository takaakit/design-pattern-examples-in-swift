// ˅
import Cocoa

// ˄

public class AppLogin: NSView, Mediator {
    // ˅
    
    // ˄

    @IBOutlet private weak var textUsername: ColleagueTextField!
    // ˅
    
    // ˄

    @IBOutlet private weak var textPassword: ColleagueTextField!
    // ˅
    
    // ˄

    @IBOutlet private weak var buttonOk: ColleagueButton!
    // ˅
    
    // ˄

    @IBOutlet private weak var buttonCancel: ColleagueButton!
    // ˅
    
    // ˄

    @IBOutlet private weak var radioButtonGuest: ColleagueRadioButton!
    // ˅
    
    // ˄

    @IBOutlet private weak var radioButtonLogin: ColleagueRadioButton!
    // ˅
    
    // ˄

    public func createColleagues() {
        // ˅
        radioButtonGuest.mediator = self
        radioButtonLogin.mediator = self
        textUsername.mediator = self
        textPassword.mediator = self
        buttonOk.mediator = self
        buttonCancel.mediator = self
        
        radioButtonGuest.setActivation(isEnable: true)
        radioButtonLogin.setActivation(isEnable: true)
        textUsername.setActivation(isEnable: false)
        textPassword.setActivation(isEnable: false)
        buttonOk.setActivation(isEnable: true)
        buttonCancel.setActivation(isEnable: true)
        // ˄
    }

    // Change enable/disable of the Colleagues when notified from the Mediators.
    public func colleagueChanged() {
        // ˅
        if buttonOk.isHighlighted == true || buttonCancel.isHighlighted == true {
            exit(0)
        }
        else {
            if radioButtonGuest.isHighlighted == true {     // Guest mode
                textUsername.setActivation(isEnable: false)
                textPassword.setActivation(isEnable: false)
                buttonOk.setActivation(isEnable: true)
            }
            else {                                          // Login mode
                textUsername.setActivation(isEnable: true)
                textPassword.setActivation(isEnable: true)
                
                // Judge whether the changed Colleage is enabled or disabled
                if textUsername.stringValue != "" && textPassword.stringValue != "" {
                    buttonOk.setActivation(isEnable: true)
                }
                else {
                    buttonOk.setActivation(isEnable: false)
                }
            }
        }
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
