EXEC = CWalker
SRC = $(wildcard src/*.c)
OBJS = $(SRC:.c=.o)
FLAGS = -g

$(EXEC): $(OBJS)
	gcc $(OBJS) $(FLAGS) -o $(EXEC)

%.o: %.c include/%.h
	gcc -c $(FLAGS) $< -o $@

install:
	make
	cp CWalker /usr/local/bin/CWalker

clean:
	-rm *.out
	-rm src/*.o 
	-rm *.o

lint:
	clang-tidy src/*.c src/include/*.h
