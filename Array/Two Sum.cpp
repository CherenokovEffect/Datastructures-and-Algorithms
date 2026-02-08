#include<bits/stdc++.h>

using namespace std ;

class Solution {
public:
    vector<int> twoSumTwoPointer(vector<int>& nums, int target) {

    	/*
    	 Made vector pair to store array with their respected index values
    	 used two pointer to check if there exists a value that satisfies the
    	 required condition 

		 TC O(nlogn)
    	*/

    	vector<pair<int,int>> a(nums.size()) ;

    	for(int i=0;i<nums.size();i++){
    		a[i].first = nums[i] ;
    		a[i].second= i ;
    	}

    	sort(a.begin(),a.end()) ;

    	vector<int> result ;

    	int i = 0 ;
    	int j = nums.size()-1 ;

    	while(i<j){
    		if(a[i].first + a[j].first ==target){
    			result.push_back(a[i].second) ;
    			result.push_back(a[j].second) ;
    			break ;
    		}

    		if(a[i].first+a[j].first<target){
    			i++ ;
    		}
    		if(a[i].first+a[j].first>target){
    			j-- ;
    		}
    	}

    	return result ;
        
    }

    vector<int> twoSumHashmap(vector<int>& nums, int target) {

		unordered_map<int,int> seen_nums ;
		for(int i=0;i<nums.size();i++){
			
		}

        
    }
};


int main(){

	Solution s ;
    vector<int> a = {3,2,4} ;
	vector<int> result = s.twoSumTwoPointer(a,6);

	for(auto it : result){
		cout << it << " " ;
	}


}