import Foundation

/*
The subject is a factory to make credit cards. The Factory defines how to create a credit card,
but the actual credit card is created by the CreditCardFactory.
The "createProduct()" is called a Factory Method, and it is responsible for manufacturing an object.
*/

let factory = CreditCardFactory()

let jacksonCard = factory.create(owner: "Jackson")
jacksonCard.use()

let sophiaCard = factory.create(owner: "Sophia")
sophiaCard.use()

let oliviaCard = factory.create(owner: "Olivia")
oliviaCard.use()
