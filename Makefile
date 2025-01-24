README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "Date de création: $(shell date)" >> README.md
	@echo "Nombre de lignes dans guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "Le programme guessinggame.sh demande à l'utilisateur de deviner le nombre de fichiers dans le répertoire actuel." >> README.md
	@echo "Utilisez bash guessinggame.sh pour démarrer le jeu." >> README.md
