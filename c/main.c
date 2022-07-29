#include <stdio.h>
#include <stdlib.h>
#include <float.h>
#include <limits.h>
#include "_io.h"
#include "_math.h"
#include "_string.h"
#include "_sort.h"

float solve(int *arr, int len) {
    float max = FLT_MIN;
    for (int i = 1; i < len; i++) {
        int start1 = 0;
        int end1 = i;
        int start2 = i;
        int end2 = len - i;

        float fa = sum_of_arr(arr, start1, i) / (end1 - start1);
        float fb = sum_of_arr(arr, start2, len - i) / (end2 - start2);

        max = max_float(fa + fb, max);
    }
    return max;
}

int main() {
    int n = read_int();

    for (int i = 0; i < n; i++) {
        int k = read_int();
        int arr[k];
        for (int j = 0; j < k; j++) {
            arr[j] = read_int();
        }

        qsort(arr, k, sizeof(int), compare_int);
        float result = solve(arr, k);
        printf("%f\n", result);
    }
}

