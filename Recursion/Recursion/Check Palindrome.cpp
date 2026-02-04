#include <iostream>
#include <vector>
#include<string>

using namespace std ;



int Recursive(string s , int i , int j){
    if(s[i]!=s[j]) return 0 ;
    if(i>=j) return 1 ;

    return Recursive(s,i+1,j-1) ; 
}

int main()
{   
    string s ;
    cin >> s ;
    std::cout << Recursive(s,0,s.size()-1) << "\n" ;
}