#include <bits/stdc++.h>
using namespace std;

/*
    Calculating mid two methods 

    Traditional 
    
    l = left   = 10 
    r = right  = 20 

    mid = (l+r)/2 ;
    mid = (10+20)/2 ;
    mid = 15 ;

    l = 2,000,000,000
    r = 2,100,000,000

    l + r = 4,100,000,000  // overflow
    mid = garbage

    Safer Version

    mid = l + (r-l)/2 
    mid = 10 + (20-10)/2 
    mid = 15

    r - l = 100,000,000     \\ Safe from overflow 
    (r - l) / 2 = 50,000,000
    mid = 2,000,000,000 + 50,000,000
    mid = 2,050,000,000

    int mid = std::midpoint(l, r);  // C++20

    A function / condition is monotonic if it changes in only one direction.

*/

int main()
{
    int n, k;

    cin >> n >> k;

    vector<int> a(n);

    for (int i = 0; i < n; i++)
    {
        cin >> a[i];
    }

    sort(a.begin(),a.end()) ;

    for (int i = 0; i < k; i++)
    {
        int target;
        cin >> target;

        int l = 0;
        int r = n - 1;
        int mid = int((l + r) / 2);

        while (l <= r && a[mid] != target)
        {
            if (a[mid] > target)
            {
                r = mid - 1;
            }
            else
            {
                l = mid + 1;
            }
            mid = int((r + l) / 2);
        }

        if (a[mid] == target)
        {
            cout << "YES" << "\n";
        }
        else
        {
            cout << "NO" << "\n";
        }
    }
}