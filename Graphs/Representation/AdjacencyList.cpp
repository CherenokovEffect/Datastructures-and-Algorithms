#include<bits/stdc++.h>
#define EB emplace_back 
using namespace std ;

vector<int> adj[5] ;
vector<pair<int,int>> adjacency_list[5] ;

void weighted(){

    int n ;
    cout << "Enter no of edges := "  ;
    cin >> n ;
    for(int i=0;i<n;i++){
        int a , b , w ;
        cin >> a >> b >> w ;
        adjacency_list[a].EB(b,w) ;
        adjacency_list[b].EB(b,w) ;
    }  

    int nodes = 4 ;

    for(int i=1;i<=nodes;i++){
        cout << i << "->" ;
        for(auto it : adjacency_list[i]){
          cout <<"("<< it.first<<","<<it.second<<")" << " " ;
        }
        cout << "\n" ;
    }
}

void unweighted(){
    int n ;
    cout << "Enter no of edges := "; 
    cin >> n ;

    for(int i=0;i<n;i++){
       int a , b ;
       cin >> a >> b ;
       adj[a].push_back(b) ;
       adj[b].push_back(a) ;  // if undirected if directed we can remove line and add in order
    }

    int nodes = 4 ;

    for(int i=1;i<=nodes;i++){
        cout << i << "->" ;
        for(auto it : adj[i]){
          cout << it << " " ;
        }
        cout << "\n" ;
    }
}

int main(){
   
    weighted() ;
}