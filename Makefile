all: test

PASSES := $(wildcard tests/pass/*)
FAILS := $(wildcard tests/fail/*)

test-pass: $(PASSES)
	echo "Testing validly formatted commit lines"
	@for file in $^; do { \
		echo "Testing $$file"; \
		./runtest.sh $$file; } done

test-fail: $(FAILS)
	@echo "Testing badly formatted commit lines"
	@for file in $^; do { \
		echo "Testing $$file"; \
		./runtest.sh $$file Fail; } done

test: test-pass test-fail

.PHONY: all
