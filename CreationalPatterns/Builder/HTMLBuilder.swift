// ˅
import Foundation

// ˄

public class HTMLBuilder: Builder {
    // ˅
    
    // ˄

    // File name to create
    public var result: String = ""
    // ˅
    
    // ˄

    private var outputData: String = ""
    // ˅
    
    // ˄

    // Make a title of HTML file
    public func createTitle(title: String) {
        // ˅
        result = title + ".html"        // Set a title as a file name
        outputData.append("<html><head><title>" + title + "</title></head><body>\n")   // Write a title
        outputData.append("<h1>" + title + "</h1>\n")
        // ˄
    }

    // Make a section of HTML file
    public func createSection(section: String) {
        // ˅
        outputData.append("<p>" + section + "</p>\n")        // Write a section
        // ˄
    }

    // Make items of HTML file
    public func createItems(items: Array<String>) {
        // ˅
        outputData.append("<ul>\n")                          // Write items
        for i in 0..<items.count {
            outputData.append("<li>" + items[i] + "</li>\n")
        }
        outputData.append("</ul>\n")
        // ˄
    }

    public func close() {
        // ˅
        outputData.append("</body></html\n")
        
        do {
            try outputData.write(toFile: result, atomically: true, encoding: String.Encoding.utf8)
        }
        catch {
            print("Failed to write")
            exit(1)
        }
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
