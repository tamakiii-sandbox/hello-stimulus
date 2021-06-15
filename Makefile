.PHONY: help setup server watch clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	vendor \
	node_modules

server:
	symfony server:start

watch:
	yarn encore dev --watch

vendor:
	composer install --dev

node_modules:
	yarn install --dev

clean:
	-rm -rf node_modules

