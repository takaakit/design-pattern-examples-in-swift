// ˅

// ˄

// Display values as a number.
public class DigitObserver: Observer {
    // ˅

    // ˄

    private let numberSubject: NumberSubject

    public init(numberSubject: NumberSubject) {
        // ˅
        self.numberSubject = numberSubject
        // ˄
    }

    public func update(changedSubject: Subject) {
        // ˅
        // Before processing, it checks to make sure the changed subject is the subject held.
        if changedSubject === self.numberSubject {
            print("Digit    : \(self.numberSubject.getValue())")
        }
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
