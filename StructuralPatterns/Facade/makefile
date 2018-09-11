SRC = \
	DataLibrary.swift \
	HtmlWriter.swift \
	PageCreator.swift \
	main.swift

PROG = Facade

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
