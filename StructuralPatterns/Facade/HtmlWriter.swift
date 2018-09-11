// ˅
import Foundation

// ˄

public class HtmlWriter {
    // ˅
    
    // ˄

    private var buffer: String = ""
    // ˅
    
    // ˄

    private let filePath: String

    public init(filePath: String) {
        // ˅
        self.filePath = filePath
        // ˄
    }

    // Write a title
    public func heading(title: String) {
        // ˅
        buffer.append("<html>")
        buffer.append("<head><title>" + title + "</title></head>")
        buffer.append("<body>\n")
        buffer.append("<h1>" + title + "</h1>\n")
        // ˄
    }

    // Write a paragraph
    public func paragraph(message: String) {
        // ˅
        buffer.append("<p>" + message + "</p>\n")
        // ˄
    }

    // Write a link
    public func anchor(url: String, text: String) {
        // ˅
        buffer.append("<a href=\"" + url + "\">" + text + "</a>")
        // ˄
    }

    // Write a mail address
    public func mailto(mailAddress: String, userName: String) {
        // ˅
        anchor(url: "mailto:" + mailAddress, text: userName)
        // ˄
    }

    public func close() {
        // ˅
        buffer.append("</body>")
        buffer.append("</html>\n")
        
        do {
            try buffer.write(toFile: filePath, atomically: true, encoding: String.Encoding.utf8)
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
