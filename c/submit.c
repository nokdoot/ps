#include <stdio.h>
#include <stdlib.h>
#include <float.h>
#include <limits.h>
#include <string.h>

int read_int() {
    int value;
    scanf("%d", &value);
    return value;
}

void read_line(char* var) {
    scanf("%s", var);
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



const int TRUE = 1;
const int FALSE = 0;

int palindrome(char* str) {
    int len = strlen(str);

    if (len == -1) return FALSE;

    int left = 0;
    int right = len - 1;

    while (left < right) {
        if (str[left] != str[right]) return FALSE;
        left++;
        right--;
    }

    return TRUE;
}

int compare_int (const void *a, const void *b) {
    int c = *(int*)a;
    int d = *(int*)b;
    return c - d; 
}


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

