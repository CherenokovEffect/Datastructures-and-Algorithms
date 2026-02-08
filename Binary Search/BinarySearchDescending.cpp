#include <bits/stdc++.h>
using namespace std;


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