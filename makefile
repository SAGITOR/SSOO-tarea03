#
# Seccion 1
#
# Esta seccion se puede modificar segun
# los requerimientos de su proyecto

CC=g++
SRC=$(wildcard */*.cc)
CFLAGS=-std=c17 -Wall -D_POSIX_C_SOURCE=200809L
#LIBS=-ldl


BIN=main
#
# Seccion 2 (NO MODIFICAR!!!)
#
OBJ=$(SRC:.c=.o)

all:  $(BIN)
	@echo Made [ $? ] OK :\)

$(BIN): $(OBJ)
	@echo Made $(OBJ)
	$(CC) $(LIBS) $(OBJ) -o $(@)
	
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -f $(OBJ)
	@rm -f *~
	@rm -f $(BIN)