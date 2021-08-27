import Foundation

/*
Check whether the same instance is obtained.
*/

let obj1 = Singleton.getInstance()
let obj2 = Singleton.getInstance()
if obj1 === obj2 {
    print("obj1 and obj2 are the same instance.")
}
else {
    print("obj1 and obj2 are different instances.")
}
