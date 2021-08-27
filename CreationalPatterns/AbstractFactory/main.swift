import Foundation

/*
Create a hierarchical link collection as an HTML file. It can be created in either tabular or list format.
*/

print("Please enter a number (1 or 2):")
print("  1: Create objects by using ListFactory")
print("  2: Create objects by using TableFactory")
let number = Int(readLine()!)
if number == nil {
    print("Unexpected value.")
    exit(1)
}

var factory: Factory? = nil
if number! == 1 {
    factory = ListFactory()
}
else if number! == 2 {
    factory = TableFactory()
}
else {
    print("The value is not 1 or 2.")
    exit(1)
}

let washingtonPost = factory!.createLink(name: "The Washington Post", url: "https://www.washingtonpost.com/")
let newYorkTimes = factory!.createLink(name: "The NewYork Times", url: "https://www.nytimes.com/")
let financialTimes = factory!.createLink(name: "The Financial Times", url: "https://www.ft.com/")

let newspaper = factory!.createData(name: "Newspaper")
newspaper.add(item: washingtonPost)
newspaper.add(item: newYorkTimes)
newspaper.add(item: financialTimes)

let yahoo = factory!.createLink(name: "Yahoo!", url: "https://www.yahoo.com/")
let google = factory!.createLink(name: "Google", url: "https://www.google.com/")

let searchEngine = factory!.createData(name: "Search engine")
searchEngine.add(item: yahoo)
searchEngine.add(item: google)

let linkPage = factory!.createPage(title: "LinkPage", author: "James Smith")
linkPage.add(item: newspaper)
linkPage.add(item: searchEngine)

linkPage.output()
