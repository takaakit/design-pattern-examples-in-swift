#if os(Linux)
import Foundation
#else
import Cocoa
#endif

/*
Observers observe a Subject object holding a numerical value and display the value.
The display formats are digits and bar charts.
*/

let numberSubject = NumberSubject()
numberSubject.attach(observer: DigitObserver(numberSubject: numberSubject))
numberSubject.attach(observer: BarChartObserver(numberSubject: numberSubject))

srandom(UInt32(time(nil)))
for _ in 0..<20 {
    #if os(Linux)
    let value = Int(random() % 50)
    #else
    let value = Int(arc4random()) % 50
    #endif

    numberSubject.setValue(value: value)
    Thread.sleep(forTimeInterval: 0.2)
}
