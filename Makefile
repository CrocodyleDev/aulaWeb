SRC = $(wildcard *.java) $(wildcard aulas/*.java) $(wildcard libs/*.java)
BIN = bin

all: build run

build:
	mkdir -p $(BIN)
	javac -d $(BIN) $(SRC)

run:
	java -cp $(BIN) Main

clear:
	rm -rf $(BIN)/*

git-config:
	git config --global user.email "crocoprojects62@gmail.com"
	git config --global user.name "gustavo-teste"

git-commit:
	git add .
	git commit -m "Commit automático via Makefile"
	git push

deploy: build run git-commit

venv: 
	@python3 -m venv ambiente

server:
	@python3 manage.py runserver