.PHONY: help setup clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	node_modules

watch:
	yarn encore dev --watch

node_modules:
	yarn install --dev

clean:
	-rm -rf node_modules

