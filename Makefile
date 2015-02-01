.PHONY:clean
CC = gcc
RM = rm -rf 
OBJ = simple 
OBJS = main.o bar.o foo.o
$(OBJ):$(OBJS)
	$(CC) -o $@ $^
main.o : main.c
	$(CC) -c $^ -o $@
bar.o : bar.c
	$(CC) -c $^ -o $@
foo.o : foo.c
	$(CC) -c $^ -o $@
clean :
	$(RM) $(OBJ) $(OBJS)

