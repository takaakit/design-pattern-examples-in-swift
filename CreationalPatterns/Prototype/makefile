SRC = \
	Framework/Display.swift \
	Framework/Manager.swift \
	FrameDisplay.swift \
	UnderlineDisplay.swift \
	main.swift

PROG = Prototype

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
