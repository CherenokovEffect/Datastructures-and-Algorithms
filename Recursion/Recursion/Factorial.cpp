#include <iostream>
#include <vector>


int Iterative(int n){   
    int value = 1 ;
    for(int i=1;i<=n;i++){
        value *= i ;
    }
    return value ;
}

int RecursiveTail(int n,int k){
    
    if(n==0) return k;


    return RecursiveTail(n-1,k*n) ;
}

int RecursiveHead(int n){
    
    if(n==0) return 1 ;


    return n*RecursiveHead(n-1) ;
}

int main()
{
    int n;
    std::cin >> n;
    int value = 1;
    std::cout << Iterative(n) << "\n" ;
    std::cout << RecursiveHead(n) << "\n" ;
    
}