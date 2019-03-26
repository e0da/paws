BIN_PATH = $(HOME)/bin

BIN = paws
SRC_BIN = $(PWD)/$(BIN)
INSTALLED_BIN = $(BIN_PATH)/$(BIN)

.PHONY: install uninstall

install:
	ln -sf $(SRC_BIN) $(INSTALLED_BIN)

uninstall:
	rm -f $(INSTALLED_BIN)
