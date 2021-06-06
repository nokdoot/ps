#include <stdio.h>

int readint() {
    int value;
    scanf("%d", &value);
    return value;
}

int gcd(int a, int b) {
    if (b > a) {
        int tmp = a;
        a = b;
        b = tmp;
    }
    while (b != 0) {
        int r = a % b;
        a = b;
        b = r;
    }
    return a;
}

int main() {
    int count = readint();
    for (int i = 0; i < count; i++) {
        int k = readint();
        printf("%d\n", 100 / gcd(k, 100));
    }
    return 0;
}
