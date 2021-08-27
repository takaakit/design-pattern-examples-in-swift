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

// ˄
