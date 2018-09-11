// ˅

// ˄

public class BookShelf: Aggregate {
    // ˅

    // ˄

    public var numberOfBooks: Int = 0
    // ˅

    // ˄

    private var books: [Book?]
    // ˅
    
    // ˄

    public init(maxsize: Int) {
        // ˅
        books = [Book?](repeating: nil, count: maxsize)
        // ˄
    }

    public func iterator() -> Iterator {
        // ˅
        return BookShelfIterator(bookShelf: self)
        // ˄
    }

    public func getAt(index: Int) -> Book? {
        // ˅
        return books[index]
        // ˄
    }

    public func add(book: Book) {
        // ˅
        books[numberOfBooks] = book
        numberOfBooks += 1
        // ˄
    }

    // ˅

    // ˄
}

// ˅

// ˄
