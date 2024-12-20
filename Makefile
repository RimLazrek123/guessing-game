README = README.md
SCRIPT = guessinggame.sh
all: $(README)
$(README): 
	@echo "# Guessing Game" > $(README)
	@echo "" >> $(README)
	@echo "Date and Time: $(shell date)" >> $(README)
	@echo "Lines of code in $(SCRIPT): $(shell wc -l < $(SCRIPT))" >> $(README)
	@echo "" >> $(README)
	@echo "## Description" >> $(README)
	@echo "This is a simple guessing game script written in Bash." >> $(README)
clean:
	@rm -f $(README)
