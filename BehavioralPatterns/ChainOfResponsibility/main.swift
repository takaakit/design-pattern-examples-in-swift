import Foundation

// Someone handles a trouble.

let emily = LazySupporter(name: "Emily")
let william = MoodySupporter(name: "William")
let amelia = SpecialSupporter(name: "Amelia", targetId: 153)
let michael = SpecialSupporter(name: "Michael", targetId: 340)
let joseph = LimitedSupporter(name: "Joseph", limitId: 250)
let lily = LimitedSupporter(name: "Lily", limitId: 350)

// Make a chain.
emily.setNext(next: michael)?.setNext(next: amelia)?.setNext(next: joseph)?.setNext(next: lily)?.setNext(next: william)

// Various troubles occurred.
for i in stride(from: 0, to: 500, by: 17) {
    emily.support(trouble: Trouble(id: i))
}

exit(0)
