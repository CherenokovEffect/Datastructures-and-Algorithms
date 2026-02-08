#include<bits/stdc++.h>

using namespace std ;

int main(){
    int n ;
    cin >> n ;
    vector<int> a(n);
    vector<int> prefix(n+1,0);
    for(int i=0;i<n;i++){
       cin >> a[i] ;
       prefix[i+1] = prefix[i]+a[i] ;
    }
}