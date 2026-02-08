#include<bits/stdc++.h>
//#define ENABLE_DEBUG

using namespace std ;
class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        
        map<char,int>  mp ;
        for(auto it : s){
            mp[it] = 0 ;
        }
        #ifdef ENABLE_DEBUG
        for(auto it : mp){
            cout << it.first << " " << it.second << "\n" ;
        }
        #endif

        int maxLength = 0 ;

        bool flag = true ;

        string str ="" ;
        for(int i=0;i<s.size();i++){
            if(!mp[s[i]]){
                str += s[i] ;
                mp[s[i]] = 1;
            }else{
                maxLength = max(maxLength,int(str.size())) ;
                str ="" ;
                for(auto it :mp){
                    mp[it.first] = 0 ;
                }
                str += s[i] ;
                mp[s[i]]=1 ;
                flag = false ;
            }
        }
        if(flag) maxLength = s.size() ;
        return maxLength ;
    }
};

int main(){
   Solution s ;
   int result = s.lengthOfLongestSubstring("aab") ;
   cout << result << "\n" ;
}