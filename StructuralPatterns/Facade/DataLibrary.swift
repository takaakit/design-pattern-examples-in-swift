// ˅
import Foundation

// ˄

public class DataLibrary {
    // ˅
    
    // ˄

    private static let instance: DataLibrary = DataLibrary()

    public class func getInstance() -> DataLibrary {
        // ˅
        return instance
        // ˄
    }

    // Read a data library file.
    public func getProperties(fileName: String, ext: String) -> [String: String] {
        // ˅
        var data: [String: String] = [:]
        if let path = Bundle.main.path(forResource: fileName, ofType: ext) {
            do {
                let contents = try String(contentsOfFile: path, encoding: .utf8)
                let lines = contents.components(separatedBy: .newlines)
                for line in lines {
                    let tmpData = line.components(separatedBy: "=")
                    if tmpData.count == 2 {
                        data[tmpData[0]] = tmpData[1]
                    }
                }
            }
            catch{
                print("File read error. :" + fileName + "." + ext)
            }
        }
        else {
            print("File not found. :" + fileName + "." + ext)
        }
        return data
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
