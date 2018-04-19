Sources=$(wildcard *.c)
Headers=$(wildcard *.h)
Objects=$(Sources:.c=.o)

all: program

%.o:%.c $(Headers)
	gcc $< -c -o $@

program: $(Objects)
	
	gcc $(Objects) -o program

clean: 
	rm -f $(Objects) program
