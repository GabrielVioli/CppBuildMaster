
DIR_OBJ = obj
DIR_SRC = src
DIR_BIN = bin
DIR_INCLUDE = include
DIR_LIB = lib

FLAGS = -O3 -Wall
LIBS = -led -L $(DIR_LIB)

all: dirs libed app2 run

dirs:
	if not exist $(DIR_OBJ) mkdir $(DIR_OBJ)
	if not exist $(DIR_BIN) mkdir $(DIR_BIN)
	if not exist $(DIR_LIB) mkdir $(DIR_LIB)

libed: $(DIR_OBJ)/funcoes.o $(DIR_OBJ)/main.o zip

$(DIR_OBJ)/%.o: $(DIR_SRC)/%.cpp $(DIR_INCLUDE)/dec_func.h
	g++ $(FLAGS) -c $< -I $(DIR_INCLUDE)/ -o $@

app2:
	g++ $(FLAGS) $(DIR_OBJ)/main.o $(DIR_OBJ)/funcoes.o $(LIBS) -I $(DIR_INCLUDE)/ -o $(DIR_BIN)/app2.exe

run:
	$(DIR_BIN)/app2.exe
	pause

zip:
	ar -rcs $(DIR_LIB)/libed.a $(DIR_OBJ)/*.o

clean:
	if exist $(DIR_OBJ)\*.o del /q $(DIR_OBJ)\*.o
	if exist $(DIR_BIN)\app2.exe del /q $(DIR_BIN)\app2.exe
	if exist $(DIR_LIB)\*.a del /q $(DIR_LIB)\*.a
	if exist app2.exe del /q app2.exe
