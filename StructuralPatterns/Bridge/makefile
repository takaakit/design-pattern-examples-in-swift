SRC = \
	Display.swift \
	DisplayImpl.swift \
	MultiLineDisplay.swift \
	TextDisplayImpl.swift \
	main.swift

PROG = Bridge

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
