all:readme

readme:
	echo "# Guessing Game" > README.md
	echo "## Make" >> README.md
	echo -n "**The date and time of make:** " >> README.md
	date >> README.md
	echo "## Lines of code" >> README.md
	echo -n "**The number of lines of code:** " >> README.md
	cat guessinggame.sh|wc -l >> README.md

clean:
	rm README.md
