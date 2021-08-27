// ˅
import Foundation

// ˄

public class PageCreator {
    // ˅
    
    // ˄

    private static let instance: PageCreator = PageCreator()

    public class func getInstance() -> PageCreator {
        // ˅
        return instance
        // ˄
    }

    public func createSimpleHomepage(mailAddress: String, htmlFileName: String) {
        // ˅
        let addressBook = DataLibrary.getInstance().getProperties(fileName: "addressbook", ext: "txt")
        if let userName: String = addressBook[mailAddress] {
            let writer = HtmlWriter(filePath: htmlFileName)
            writer.heading(title: "\(userName)'s homepage")
            writer.paragraph(message: "Welcome to \(userName)'s homepage.")
            writer.paragraph(message: "Please email me at this address.")
            writer.mailto(mailAddress: mailAddress, userName: userName)
            writer.close()
            print("\(htmlFileName) is created for \(mailAddress) (\(userName))")
            let fm = FileManager.default
            print("Output File: \(fm.currentDirectoryPath)/\(htmlFileName)")
        }
        else {
            print("Failed to read address book.")
        }
        // ˄
    }

    private init() {
        // ˅
        
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
