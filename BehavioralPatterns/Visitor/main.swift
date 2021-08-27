import Foundation

/*
Visitor visits the file system composed of files and directories, and displays a list of files/directories.
*/

print("Create a file system...")

let binDir: Directory = Directory(name: "bin")
let lsFile: File = File(name: "ls", size: 20)
binDir.add(element: lsFile)
let mkdirFile: File = File(name: "mkdir", size: 40)
binDir.add(element: mkdirFile)

let emilyDir: Directory = Directory(name: "emily")
let homeworkFile: File = File(name: "homework.doc", size: 60)
emilyDir.add(element: homeworkFile)

let jamesDir: Directory = Directory(name: "james")
let appFile: File = File(name: "app.exe", size: 80)
jamesDir.add(element: appFile)

let homeDir: Directory = Directory(name: "home")
homeDir.add(element: emilyDir)
homeDir.add(element: jamesDir)

let rootDir: Directory = Directory(name: "root")
rootDir.add(element: homeDir)
rootDir.add(element: binDir)

rootDir.accept(visitor: ListVisitor())
