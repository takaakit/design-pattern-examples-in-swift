SRC = \
	Hand.swift \
	Player.swift \
	Strategy.swift \
	StrategyA.swift \
	StrategyB.swift \
	main.swift

PROG = Strategy

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
