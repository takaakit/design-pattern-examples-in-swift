// ˅

// ˄

// Display values as a bar chart.
public class BarChartObserver: Observer {
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
            print("Bar chart: \(String(repeating: "*", count: self.numberSubject.getValue()))")
        }
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
