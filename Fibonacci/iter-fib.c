#include <stdio.h>

int i, result, n;

int iter(int a, int b, int n){
        int c;
        for (i = 0; i < n; i++){
             c = b;
             b = a + b;
             a = c;
        }
        return a;
    }

int main(){
        scanf("%d", &n);
        result = iter(0, 1, n);
        printf("%d\n", result);
    }
