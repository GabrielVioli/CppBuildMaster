
DIR_OBJ = ./obj
DIR_SRC = ./src
DIR_BIN = ./bin
DIR_INCLUDE = ./include
DIR_LIB = ./lib

FLAGS = -O3 -Wall
LIBS = -led -L $(DIR_LIB)

all: libed app2 run

libed: funcoes.o main.o zip

%.o: $(DIR_SRC)/%.cpp $(DIR_INCLUDE)/dec_func.h
	g++ $(FLAGS) -c $< -I $(DIR_INCLUDE)/ -o $(DIR_OBJ)/$@


app2:
	g++ $(FLAGS) $(DIR_OBJ)/main.o $(DIR_OBJ)/funcoes.o $(LIBS) -I $(DIR_INCLUDE)/ -o $(DIR_BIN)/app2.exe

run:
	$(DIR_BIN)/app2.exe
	pause

zip: 
	ar -rcs $(DIR_LIB)/libed.a $(DIR_OBJ)/*.o 
	
clean:
	del -f obj\*.o bin\app2.exe *o lib\*.a
