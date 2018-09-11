// ˅

// ˄

// Display values with a bar chart.
public class BarChartObserver: Observer {
    // ˅

    // ˄

    public func update(number: Number) {
        // ˅
        print("Bar chart: ", terminator: "")
        for _ in 0..<number.value {
            print("*", terminator: "")
        }
        print()
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
