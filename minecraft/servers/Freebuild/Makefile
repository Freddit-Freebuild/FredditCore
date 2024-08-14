include ../../../.config/.env-minecraft

server_name = Freebuild
screen_name = minecraft-${server_name}

include ../../../.config/.env-minecraft-${server_name}

ifeq (${MEMORY_MIN},)
	MEMORY_MIN = 4G
endif
ifeq (${MEMORY_MAX},)
	MEMORY_MAX = 4G
endif

include ../../../Makefile-help

.PHONY: copy-shared-paper-jar
copy-shared-paper-jar: # Copy the latest paper-*.jar file from servers/shared into the server folder as paper.jar
	ls -t ../shared/paper_jars/paper-*.jar | head -n 1 | xargs -I {} cp -v {} ./paper.jar

.PHONY: sessionlock-clean
sessionlock-clean: # Remove session.lock files from the worlds (in case of failed server shutdown)
	find . -name "session.lock" -delete -not -path "./plugins/*"

.PHONY: backup
backup: # Perform a backup of the Minecraft server based on backuplist.txt. Optional parameter: SILENT=true/false
	screen -S backup-${server_name} -d -m \
		bash ${FREDDITCORE_DIR}/scripts/backup.sh ${FREDDITCORE_DIR}/minecraft/servers/${server_name} ${FREDDITCORE_DIR}/minecraft/backups/${server_name} ${SILENT}

.PHONY: start
start: # Start the Minecraft server in a screen session.
	screen -S ${screen_name} -d -m \
		bash ./start.sh ${server_name} ${MEMORY_MIN} ${MEMORY_MAX} true
		@echo "Starting ${server_name}"

.PHONY: stop
stop: # Stop the Minecraft server's screen session
	screen -X -S ${screen_name} quit

.PHONY: restart
restart: # Restart the Minecraft server
	screen -r ${screen_name} -X stuff \
		"stop^M"

.PHONY: restart-hard
restart-hard: # Restart the Minecraft server's screen session
	@make stop
	@make start

.PHONY: command
command: # Execute a command from outside the Minecraft server, e.g. COMMAND="say hi" make command (requires server to be online)
ifeq ($(COMMAND),)
	@echo "Provide a command (e.g., COMMAND=\"say hi\" make command)"
else
	screen -r ${screen_name} -X stuff \
		"${COMMAND}^M"
endif

.PHONY: console
console: # Open the minecraft server's screen session (requires server to be online)
	screen -d -r ${screen_name}

.PHONY: purge-coreprotect-db
purge-coreprotect-db: # Purge Coreprotect data older than 60 days (requires server to be online)
ifeq (${BEFORE},)
	@echo "missing BEFORE parameter (e.g., 'BEFORE=60d make purge-coreprotect-db' to purge data older than 60 days)"
	@exit 1
endif
	screen -r ${screen_name} -X stuff \
		"co purge t:${BEFORE}^M"
