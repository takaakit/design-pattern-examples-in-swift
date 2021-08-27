import Foundation

/*
Add books in a bookshelf and display the names of the book in turn.
*/

let bookShelf = BookShelf(maxsize: 5)
bookShelf.add(book: Book(title: "Design Patterns: Elements of Reusable Object-Oriented Software"))
bookShelf.add(book: Book(title: "The Object Primer: Agile Model-Driven Development with UML 2.0"))
bookShelf.add(book: Book(title: "Software Systems Architecture: Working With Stakeholders Using Viewpoints and Perspectives"))
bookShelf.add(book: Book(title: "A Practical Guide to SysML: The Systems Modeling Language"))
bookShelf.add(book: Book(title: "A Pattern Language: Towns, Buildings, Construction"))

let it = bookShelf.iterator()
while it.hasNext() {
    let book = it.next() as! Book?
    print(book!.title)
}
