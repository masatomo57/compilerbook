#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
	if (argc != 2) {
		fprintf(stderr, "引数の個数が正しくありません\n");
		return 1;
	}
	
	char *p = argv[1];
	
	
	printf("%p\n", &p);
	printf("%p\n", p);
	printf("%d\n", *p);
	printf("%s\n", p);
}
