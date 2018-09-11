import Foundation

// Observers observe objects generating a numerical value and display the value.

let number = RandomNumber()
let digitObserver = DigitObserver()
let barChartObserver = BarChartObserver()
number.addObserver(observer: digitObserver)
number.addObserver(observer: barChartObserver)
number.generate()

exit(0)
