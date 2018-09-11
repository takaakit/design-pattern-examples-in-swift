import Foundation

// Factory to make ID cards.

let factory = CreditCardFactory()

let jacksonCard = try factory.create(owner: "Jackson")
jacksonCard.use()

let sophiaCard = try factory.create(owner: "Sophia")
sophiaCard.use()

let oliviaCard = try factory.create(owner: "Olivia")
oliviaCard.use()

exit(0)
