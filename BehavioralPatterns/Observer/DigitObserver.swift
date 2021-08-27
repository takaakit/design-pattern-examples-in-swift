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
