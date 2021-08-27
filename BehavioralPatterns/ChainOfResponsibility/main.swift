/*
A trouble is turned around among supporters, and the trouble will be handled by the supporter who can handle it.
There are four types of supporters below:
* LazySupporter doesn't handle any trouble
* MoodySupporter handles odd ID troubles
* SpecialSupporter handles a trouble of the target ID.
* LimitedSupporter handles troubles below the limit ID.
*/

let emily = LazySupporter(name: "Emily")
let william = MoodySupporter(name: "William")
let amelia = SpecialSupporter(name: "Amelia", targetId: 6)
let joseph = LimitedSupporter(name: "Joseph", limitId: 5)

// Make a chain.
_ = emily.setNext(next: william)?.setNext(next: amelia)?.setNext(next: joseph)

// Various troubles occurred.
for i in 0...9 {
    emily.support(trouble: Trouble(id: i))
}
