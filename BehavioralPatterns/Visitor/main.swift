import Foundation

// Visitors visit a file system composed of files and directories, and displays a list of files/directories.

print("Create a file system...")
var rootDir: Directory = Directory(name: "root")
var homeDir: Directory = Directory(name: "home")
var binDir: Directory = Directory(name: "bin")
var etcDir: Directory = Directory(name: "etc")
var emilyDir: Directory = Directory(name: "emily")
var jamesDir: Directory = Directory(name: "james")
var oliviaDir: Directory = Directory(name: "olivia")

rootDir.add(element: homeDir)
rootDir.add(element: binDir)
rootDir.add(element: etcDir)

binDir.add(element: File(name: "ls", size: 100))
binDir.add(element: File(name: "mkdir", size: 50))
homeDir.add(element: emilyDir)
homeDir.add(element: jamesDir)
homeDir.add(element: oliviaDir)

emilyDir.add(element: File(name: "homework.doc", size: 40))
jamesDir.add(element: File(name: "homework.doc", size: 50))
jamesDir.add(element: File(name: "app.exe", size: 60))
oliviaDir.add(element: File(name: "homework.doc", size: 70))
oliviaDir.add(element: File(name: "app.exe", size: 80))
oliviaDir.add(element: File(name: "tips.html", size: 90))

rootDir.accept(visitor: ListVisitor())

exit(0)
