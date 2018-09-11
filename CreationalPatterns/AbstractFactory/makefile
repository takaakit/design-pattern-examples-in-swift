SRC = \
	Factory/Data.swift \
	Factory/Factory.swift \
	Factory/Item.swift \
	Factory/Link.swift \
	Factory/Page.swift \
	ListFactory/ListData.swift \
	ListFactory/ListFactory.swift \
	ListFactory/ListLink.swift \
	ListFactory/ListPage.swift \
	TableFactory/TableData.swift \
	TableFactory/TableFactory.swift \
	TableFactory/TableLink.swift \
	TableFactory/TablePage.swift \
	main.swift

PROG = AbstractFactory

.PHONY: all
all: $(SRC)
	swiftc -o $(PROG) $(SRC)

.PHONY: clean
clean:
	rm -rf $(PROG)
