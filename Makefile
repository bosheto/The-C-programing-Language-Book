
CC=gcc
FLAGS=-std=c11
SRC =src
OBJ=obj
SRCS=$(wildcard $(SRC)/*.c)
OBJS=$(patsubst $(SRC)/%.c, $(OBJ)/%.o, $(SRCS))
BIN=bin/main.exe
RM = del /Q
CLEAR=cls

all: $(BIN)

#compile project executable
$(BIN): $(OBJS) 
	$(CC) $(OBJS) $(FLAGS) -o $@

#Compile changed .c files to .o files
$(OBJ)/%.o: $(SRC)/%.c
	$(CC) -c $< $(FLAGS) -o $@

#Clean obj and bin directories
clean:
	$(RM) $(OBJ)\* bin\*

#compile and run the project
run:
	make
	bin\main.exe