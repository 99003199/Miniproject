SRC = unity/unity.c\
src/evm.c\
test/test_evm.c\
main.c

INC = -Iunity\
-Iinc\
-Itest

PROJECT_NAME = Electronic_V_M.out

$(PROJECT_NAME): $(SRC)
	gcc $(SRC) $(INC) -o $(PROJECT_NAME)

run:$(PROJECT_NAME)
	./${PROJECT_NAME}
doc:
	make -C documentation

clean:
	rm -rf $(PROJECT_NAME) documentation/html
