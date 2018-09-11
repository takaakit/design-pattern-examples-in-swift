SRC = \
	Display.swift \
	Frame.swift \
	FullFrame.swift \
	MessageDisplay.swift \
	SideFrame.swift \
	main.swift

PROG = Decorator

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
