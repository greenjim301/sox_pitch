CXX = g++
CX = gcc
#2、定义您自己的可执行文件名称
PROGRAM_NAME=soxtool
##################################################################### #
#3、指定您必须生成的工程文件

CSOURCE = $(wildcard *.c) 
SOURCE = $(wildcard *.cpp)

OBJECTS = $(SOURCE:.cpp=.o) $(CSOURCE:.c=.o)
CFLAGS = 

.PHONY: all
all: $(PROGRAM_NAME)

clean:
	@echo "[Cleanning...]"
	@rm -f $(OBJECTS) $(PROGRAM_NAME)

%.o: %.cpp
	$(CXX) $(CFLAGS) -o $@ -c $<

%.o: %.c
	$(CX) -o $@ -c $<

$(PROGRAM_NAME): $(OBJECTS)
	$(CXX) $(CFLAGS) -o $@ $^ -lltdl 
