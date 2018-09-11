// ˅

// ˄

public class BookShelfIterator: Iterator {
    // ˅

    // ˄

    private var index: Int = 0
    // ˅

    // ˄

    private let bookShelf: BookShelf

    public init(bookShelf: BookShelf) {
        // ˅
        self.bookShelf = bookShelf
        // ˄
    }

    public func hasNext() -> Bool {
        // ˅
        return index < bookShelf.numberOfBooks
        // ˄
    }

    public func next() -> AnyObject? {
        // ˅
        let book = bookShelf.getAt(index: index)
        index += 1
        return book
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
