SRC = \
	Action.swift \
	Command.swift \
	CommandList.swift \
	Context.swift \
	Node.swift \
	Program.swift \
	Repeat.swift \
	main.swift

PROG = Interpreter

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
