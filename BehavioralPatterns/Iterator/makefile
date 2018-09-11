SRC = \
	Aggregate.swift \
	Book.swift \
	BookShelf.swift \
	BookShelfIterator.swift \
	Iterator.swift \
	main.swift

PROG = Iterator

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
