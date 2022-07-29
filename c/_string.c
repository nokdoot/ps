#include <string.h>

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
