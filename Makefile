output: ./out/main.o ./out/PathGen.o
	g++ ./out/main.o ./out/PathGen.o -o ./out/executable
	./out/executable

./out/main.o: ./src/main.cpp ./include/PathGen.hpp
	g++ -c ./src/main.cpp -o ./out/main.o

./out/PathGen.o: ./src/PathGen.cpp ./include/PathGen.hpp
	g++ -c ./src/PathGen.cpp -o ./out/PathGen.o

clean:
	rm ./out/*
