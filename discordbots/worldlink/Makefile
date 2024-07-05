name=worldlink

.PHONY: lock
lock:
	npm i --package-lock-only

.PHONY: install
install:
	npm ci

.PHONY: start
start:
	screen -S ${name} -d -m npm start

.PHONY: stop
stop:
	screen -X -S ${name} quit

.PHONY: restart
restart: stop start

.PHONY: full-start
full-start: lock install start
