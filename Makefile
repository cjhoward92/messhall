HEADERS = utils.h
OBJECTS = queue.o utils.o

default: queue

%.o: %.c $(HEADERS)
	gcc -c $< -o $@

queue: $(OBJECTS)
	gcc $(OBJECTS) -o $@

clean:
	-rm -f $(OBJECTS)
	-rm -f queue