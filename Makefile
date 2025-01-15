# Variables
SCRIPT = guessinggame.sh
README = README.md

# Default target to create the README file
all: $(README)

# Generate the README file
$(README): $(SCRIPT)
	@echo "# Guessing Game" > $(README)
	@echo "Date and Time: $(shell date)" >> $(README)
	@echo "Number of lines of code: $(shell wc -l < $(SCRIPT))" >> $(README)

# Clean up (if needed)
clean:
	rm -f $(README)
