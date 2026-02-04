#include <iostream>
#include <vector>


int Iterative(int n){   
    int num1 = 0 ;
    int num2 = 1 ;
    int num3 = 0 ;

    if(n==0){
        return 0 ;
    }

    if(n==1){
        return 1 ;
    }

    for(int i=3 ;i<=n;i++){
        num3 = num1+num2 ;
        num1 = num2 ;
        num2 = num3 ;
    }

    return num3 ;
}

int Recursive(int n){
    if(n==1) return 0 ;
    if(n==2) return 1 ;
    return Recursive(n-1) + Recursive(n-2) ;
}

std::vector<int>  dp1(100001,-1);
// DP = recursion + memory


int RecursiveDp(int n){
    if(dp1[n]!=-1)
        return dp1[n] ;

    if(n==1) return dp1[n] = 0 ;
    if(n==2) return dp1[n] = 1 ;
    
    return dp1[n] = RecursiveDp(n-1) + RecursiveDp(n-2) ;

}

std::vector<int> dp2(100001,-1);

int IterativeDp(int n){
    dp2[1] = 0 ;
    dp2[2] = 1 ;

    for(int i=3;i<=n;i++){
        dp2[i] = dp2[i-1] + dp2[i-2] ;
    }

    return dp2[n] ;
}

int main()
{
    int n;
    std::cin >> n;
    int value = 1;
    std::cout << IterativeDp(n) << "\n" ;
    std::cout << RecursiveDp(n) << "\n" ;
    
}