CC=gcc
CXX=g++
RM=rm -f

TARGET=./main


INCLUDES=-I./include -I.
LDFLAGS=-L/usr/local/lib 
LDLIBS=-lpthread

CXXFLAGS=-std=c++17 -Wall -O2

DIR_OBJ=src
SRCS=$(wildcard *.cc)

OBJS=$(patsubst %.cc,$(DIR_OBJ)/%.o,$(SRCS))

all: $(TARGET)
	@echo Made [ $? ] OK :\)

$(TARGET): $(OBJS)
	@echo Linking $(SRCS)
	@$(CXX) -o $@ $^ $(CXXFLAGS) $(LDLIBS) $(LDFLAGS) 

$(DIR_OBJ)/%.o: %.cc
	@echo Compiling [$@]
	@mkdir -p $(DIR_OBJ)
	@$(CXX) -c -o $@ $< $(CXXFLAGS) $(INCLUDES)

clean:
	@$(RM) $(OBJS)
	@$(RM) *~ core

distclean: clean
	@$(RM) $(TARGET)
	@$(RM) -r $(DIR_OBJ)

.PHONY: all clean distclean