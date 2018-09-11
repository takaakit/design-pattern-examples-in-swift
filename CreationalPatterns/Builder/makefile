SRC = \
	Builder.swift \
	Director.swift \
	HTMLBuilder.swift \
	PlainTextBuilder.swift \
	main.swift

PROG = Builder

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
