#include<bits/stdc++.h>
#define EB emplace_back
using namespace std ;

void AddEdge(vector<int> adj[] , int a , int b){
        adj[a].EB(b) ;
        adj[b].EB(a) ;
}

void BFS(int s , vector<int> adj[],vector<bool> &visited){
    queue<int> q ;
    visited[s] = true ;

    q.push(s) ;
    while(!q.empty()){
        int u = q.front() ;
        q.pop();
        cout << u << " " ;
        for(auto it : adj[u]){
            if(visited[it]==false){
                visited[it] = true ;
                q.push(it) ;
            }
        }
    }
}

int main(){

    int n ;
    cin >> n ;
    vector<int> adj[n+1] ; // It will have edges or nodes from 1 to n

    vector<bool> visited(n+1,false);
    
    for(int i=1;i<=n;i++){
      int a , b ;
      cin >> a >> b ;
      AddEdge(adj,a,b) ;
    }
    int source = 1 ;
    BFS(source,adj,visited) ;
}