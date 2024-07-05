include .env
export

name=anonventbot

.PHONY: lock
lock:
	npm i --package-lock-only

.PHONY: install
install:
	npm ci

.PHONY: start
start:
	pm2 start bot.js --name ${name}

.PHONY: stop
stop:
	pm2 stop ${name}

.PHONY: restart
restart:
	pm2 restart ${name}

.PHONY: full-start
full-start: lock install start
