objects = main.o node.o random_network_flow.o server.o

srcPath=src
binPath=bin

main: $(objects)
	mkdir -p $(binPath) && gcc -o $(binPath)/main $(addprefix $(binPath)/, $(objects)) -lm

main.o: node.o random_network_flow.o server.o
	mkdir -p $(binPath) && gcc -c $(srcPath)/main.c -o $(binPath)/main.o

node.o:
	mkdir -p $(binPath) && gcc -c $(srcPath)/node.c -o $(binPath)/node.o

random_network_flow.o: node.o
	mkdir -p $(binPath) && gcc -c $(srcPath)/random_network_flow.c -o $(binPath)/random_network_flow.o

server.o:
	mkdir -p $(binPath) && gcc -c $(srcPath)/server.c -o $(binPath)/server.o

clean:
	rm $(addprefix $(binPath)/, $(objects)) $(binPath)/main
