#include <stdio.h>

int read_int() {
    int value;
    scanf("%d", &value);
    return value;
}

void read_line(char* var) {
    scanf("%s", var);
}
