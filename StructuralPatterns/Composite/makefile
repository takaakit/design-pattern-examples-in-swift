SRC = \
	Directory.swift \
	File.swift \
	FileSystemElement.swift \
	main.swift

PROG = Composite

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
