APPS = ./apps
BIN = ./bin
INCLUDE = ./include
LIB = ./lib
OBJ = ./obj
SRC = ./src

FLAGS = -O3 -Wall
LIBS = -lm -led -L $(LIB)

all: libed myapps

libed: \
	$(OBJ)/float_vector.o \
	$(OBJ)/mytime.o \
	$(OBJ)/linked_list.o
	ar -rcs $(LIB)/libed.a $(OBJ)/*.o


myapps: clean_apps \
	$(BIN)/test_float_vector \
	$(BIN)/test_linked_list \
	$(BIN)/test_linked_list_add_last_performance \
	$(BIN)/test_linked_list_add_last_slow_performance_chart \
	$(BIN)/test_linked_list_add_last_fast_performance_chart \
	$(BIN)/test_linked_list_exercises \
	$(BIN)/test_linked_list_exercises_2
	


$(OBJ)/%.o: $(SRC)/%.c $(INCLUDE)/%.h
	gcc $(FLAGS) -c $< -I $(INCLUDE) -o $@

$(BIN)/%: $(APPS)/%.c
	gcc $(FLAGS) $< $(LIBS) -I $(INCLUDE) -o $@

run:
	$(BIN)/test_float_vector

clean:
	rm -rf $(BIN)/* $(LIB)/* $(OBJ)/*

clean_apps:
	rm -rf $(BIN)/*
