SRC = \
	MessageDisplay.swift \
	Print.swift \
	PrintMessageDisplay.swift \
	main.swift

PROG = Adapter

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
