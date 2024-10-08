.PHONY: all clean

SRC = read_boot.c read_mbr.c read_root.c read_file.c recover.c
BIN = $(SRC:.c=)

clean:
	rm -f $(BIN) $(OBJ)

all: 
	gcc read_boot.c -o read_boot
	gcc read_mbr.c -o  read_mbr
	gcc read_root.c -o read_root
	gcc read_file.c -o read_file
	gcc recover.c -o recover
