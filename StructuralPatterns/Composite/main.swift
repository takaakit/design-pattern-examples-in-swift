import Foundation

// Represents a file system composed of files and directories.

print("Create a file system...")
let rootDir: Directory = Directory(name: "root")
let homeDir: Directory = Directory(name: "home")
let binDir: Directory = Directory(name: "bin")
let etcDir: Directory = Directory(name: "etc")
let emilyDir: Directory = Directory(name: "emily")
let jamesDir: Directory = Directory(name: "james")
let oliviaDir: Directory = Directory(name: "olivia")

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

rootDir.print(upperPath: "")

exit(0)
