
# Creates the executable file of all the compiled code if its dependancies (object files) change
executable: ./out/main.o ./out/PathGen.o
	g++ ./out/main.o ./out/PathGen.o -o ./out/executable
	./out/executable
	python3 ./Visualization/test.py

# Creates the 'main' object file from the cpp file, if its dependancies change. 
./out/main.o: ./src/main.cpp ./include/PathGen.hpp
	g++ -c ./src/main.cpp -o ./out/main.o

./out/PathGen.o: ./src/PathGen.cpp ./include/PathGen.hpp
	g++ -c ./src/PathGen.cpp -o ./out/PathGen.o

clean:
	rm ./out/*
