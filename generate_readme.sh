README="README.md"
SCRIPT="guessinggame.sh"
echo "# Guessing Game" > $README
echo "" >> $README
echo "Date and Time: $(date)" >> $README
echo "Lines of code in $SCRIPT: $(wc -l < $SCRIPT)" >> $README
echo "" >> $README
echo "## Description" >> $README
echo "This is a simple guessing game script written in Bash." >> $README
