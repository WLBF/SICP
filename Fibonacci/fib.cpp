#include <bits/stdc++.h>  
using namespace std;  
typedef long long LL;  
const int N = 2;  
const LL MOD = 19999997;  
  
//将矩阵a*b的结果放入c  
void matMul(LL a[][N], LL b[][N], LL c[][N])  
{  
    LL ret[N][N] = {0};  
    for(int i = 0; i < N; ++i)  
        for(int j = 0; j < N; ++j)  
            for(int k = 0; k < N; ++k)  
                ret[i][j] = (ret[i][j] + a[i][k] * b[k][j]) % MOD;  
    for(int i = 0; i < N; ++i)  
        memcpy(c[i], ret[i], sizeof(c[i]));  
}  
  
//将a^n放入a  
void matPow(LL a[][N], int n)  
{  
    LL ret[N][N] = {0};  
    for(int i = 0; i < N; ++i) ret[i][i] = 1;  
    while(n)  
    {  
        if(n & 1) matMul(ret, a, ret);  
        matMul(a, a, a);  
        n >>= 1;  
    }  
  
  
    for(int i = 0; i < N; ++i)  
        memcpy(a[i], ret[i], sizeof(a[i]));  
}  
  
int main()  
{  
    int n;  
    while(~scanf("%d", &n))  
    {  
        LL a[N][N] = {0, 1, 1, 1};  
        matPow(a, n);  
        printf("%lld\n", a[1][1] % MOD);  
    }  
    return 0;  
}  
