private-operations
executeCommands: commands
	| command |
	command := OSProcess command: (';' join: commands).
	command complete