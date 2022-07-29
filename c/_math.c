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

int max_int(int a, int b) {
    if (a > b) return a;
    return b;
}

float max_float(float a, float b) {
    if (a > b) return a;
    return b;
}

int min_int(int a, int b) {
    if (a > b) return b;
    return a;
}

float min_float(float a, float b) {
    if (a > b) return a;
    return b;
}
    
int sum_of_arr(int *arr, int start, int length) {
    int sum = 0;
    for (int i = start; i < start + length; i++) {
        sum += *(arr + i);
    }
    return sum;
}

