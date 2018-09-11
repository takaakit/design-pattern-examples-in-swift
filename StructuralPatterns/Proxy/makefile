SRC = \
	Printer.swift \
	PrinterProxy.swift \
	RealPrinter.swift \
	main.swift

PROG = Proxy

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
