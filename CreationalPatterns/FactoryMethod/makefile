SRC = \
	Framework/Factory.swift \
	Framework/Product.swift \
	IdCard/CreditCard.swift \
	IdCard/CreditCardFactory.swift \
	main.swift

PROG = FactoryMethod

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
