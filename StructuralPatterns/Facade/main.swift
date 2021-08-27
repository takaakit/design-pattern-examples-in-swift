import Foundation

/*
Create a simple homepage through a Facade (PageCreator). The Facade gets info from
the DataLibrary and uses the info to create an HTML file.
*/

PageCreator.getInstance().createSimpleHomepage(mailAddress: "emily@example.com", htmlFileName: "Homepage.html")
