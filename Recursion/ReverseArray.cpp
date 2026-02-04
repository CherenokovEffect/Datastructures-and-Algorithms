#include <iostream>
#include <vector>
#include <algorithm>
void Reverse(std::vector<int> &a, int i, int j)
{
    if (i >= j)
    {
        return;
    }
    std::swap(a[i], a[j]);
    Reverse(a, i + 1, j - 1);
}

int main()
{
    int n;
    std::cin >> n;
    std::vector<int> a(n);
    for (int i = 0; i < n; i++) std::cin >> a[i];
    Reverse(a, 0, n - 1);

    for (auto it : a)
    {
        std::cout << it << " ";
    }
}