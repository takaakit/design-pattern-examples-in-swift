SRC = \
	Directory.swift \
	Element.swift \
	File.swift \
	FileSystemElement.swift \
	ListVisitor.swift \
	Visitor.swift \
	main.swift

PROG = Visitor

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
