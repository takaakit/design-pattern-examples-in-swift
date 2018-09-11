SRC = \
	LazySupporter.swift \
	LimitedSupporter.swift \
	MoodySupporter.swift \
	SpecialSupporter.swift \
	Supporter.swift \
	Trouble.swift \
	main.swift

PROG = chain_of_responsibility

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
