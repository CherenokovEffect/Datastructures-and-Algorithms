#include <bits/stdc++.h>

using namespace std;

int main()
{
    int n;
    cin >> n;

    for (int i = 1; i <= n; i++)
    {
        if (i == 1 || i == n || i==(n/2)+1)
        {
            for (int j = 1; j <= n; j++)
            {
                cout << "*" << " " ;
            }
            cout << "\n";
        }
        else
        {
            for (int j = 1; j <= n; j++)
            {
                if (j == 1 || j == n || j==(n/2)+1 )
                {
                    cout << "*" << " ";
                }
                else
                {
                    cout << "  ";
                }
            }
            cout << "\n";
        }
    }
}