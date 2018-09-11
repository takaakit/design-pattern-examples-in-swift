import Foundation

// Create a hierarchical link collection as an HTML file.

let argv = ProcessInfo.processInfo.arguments
if argv.count != 2 {
    print("Usage: abstractfactory class.name.of.ConcreteFactory")
    print("Ex.1 : abstractfactory ListFactory")
    print("Ex.2 : abstractfactory TableFactory")
}
else {
    let factory = getFactory(classname: argv[1])
    
    let washingtonPost = factory.createLink(name: "The Washington Post", url: "https://www.washingtonpost.com/")
    let newYorkTimes = factory.createLink(name: "The NewYork Times", url: "https://www.nytimes.com/")
    let financialTimes = factory.createLink(name: "The Financial Times", url: "https://www.ft.com/")
    let yahoo = factory.createLink(name: "Yahoo!", url: "https://www.yahoo.com/")
    let google = factory.createLink(name: "Google", url: "https://www.google.com/")
    let mlb = factory.createLink(name: "MLB", url: "https://www.mlb.com/")
    let fifa = factory.createLink(name: "FIFA", url: "https://www.fifa.com/")
    let wba = factory.createLink(name: "WBA", url: "http://www.wbaboxing.com/")
    let wbc = factory.createLink(name: "WBC", url: "http://www.wbcboxing.com/")
    
    let newspaper = factory.createData(name: "Newspaper")
    newspaper.add(item: washingtonPost)
    newspaper.add(item: newYorkTimes)
    newspaper.add(item: financialTimes)
    
    let searchEngine = factory.createData(name: "Search engine")
    searchEngine.add(item: yahoo)
    searchEngine.add(item: google)
    
    let sports = factory.createData(name: "Sports")
    sports.add(item: mlb)
    sports.add(item: fifa)
    sports.add(item: wba)
    sports.add(item: wbc)
    
    let linkPage = factory.createPage(title: "LinkPage", author: "James Smith")
    linkPage.add(item: newspaper)
    linkPage.add(item: searchEngine)
    linkPage.add(item: sports)
    
    linkPage.output()
}

exit(0)
