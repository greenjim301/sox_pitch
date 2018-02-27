CXX = g++
CX = gcc
#2���������Լ��Ŀ�ִ���ļ�����
PROGRAM_NAME=soxtool
##################################################################### #
#3��ָ�����������ɵĹ����ļ�

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
