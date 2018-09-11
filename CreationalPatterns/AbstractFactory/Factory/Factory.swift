// ˅
import Foundation

// ˄

public protocol Factory {

    func createPage(title: String, author: String) -> Page

    func createLink(name: String, url: String) -> Link

    func createData(name: String) -> Data

    // ˅
    
    // ˄
}

// ˅
func getFactory(classname: String) -> Factory {
    if classname == "ListFactory" {
        return ListFactory()
    }
    else if classname == "TableFactory" {
        return TableFactory()
    }
    else {
        print("Factory name is invalid.")
        exit(1)
    }
}
// ˄
