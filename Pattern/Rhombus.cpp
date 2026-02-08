#include <bits/stdc++.h>

using namespace std;

/*   1 2 3 4 5 6 7 8 9 10 11
   1           *
   2         *   *
   3       *       *
   4     *           *
   5   *               *
   6 *                   *
   7   *               *
   8     *           *
   9       *       *
   10        *   *
   11          *
*/

void Rhombus(int n)
{
    for (int i = 1; i <= n; i++)
    {
        if (i > 0 && i <= (n / 2) + 1)
        {
            for (int j = 1; j <= (n / 2) + 1; j++)
            {
                if (j == (n / 2) + 1)
                {
                    cout << j;
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

int main()
{
    int n;
    cin >> n;
    Rhombus(n);
}