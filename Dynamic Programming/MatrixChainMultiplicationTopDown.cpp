#include <bits/stdc++.h>

using namespace std;

int MatrixChainMultiplication(vector<int> &arr, int i, int j, vector<vector<int>> &dp)
{
    if (i >= j)
    {
        return 0;
    }

    int mini = INT_MAX;

    if (dp[i][j] != -1)
        return dp[i][j];

    for (int k = i; k < j; k++)
    {
        int temp = MatrixChainMultiplication(arr, i, k, dp) + MatrixChainMultiplication(arr, k + 1, j, dp) + (arr[i - 1] * arr[k] * arr[j]);
        mini = min(temp, mini);
    }
    dp[i][j] = mini;
    return mini;
}

int main()
{
    vector<int> arr = {40, 20, 30, 10, 30};
    int n = arr.size();
    vector<vector<int>> dp(n, vector<int>(n, -1));
    cout << MatrixChainMultiplication(arr, 1, arr.size() - 1, dp);
}