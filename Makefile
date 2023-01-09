all: build

tests: timber-tests
	./timber-tests

test-%: timber-tests
	./timber-tests -tagged $(@:test-%=%)

build:
	stanza build

timber-tests: src/*.stanza tests/*.stanza
	stanza build timber-tests


clean:
	rm -f ./pkgs/*.pkg
	rm -f ./test-pkgs/*.pkg
	rm ./timber-tests

.phony: clean