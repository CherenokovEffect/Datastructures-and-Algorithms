#include <iostream>
#include <vector>

int val = 0 ;
int Sum(std::vector<int> &a, int sum, int i)
{   
    val++ ;
    if (i == a.size())
    {
        return sum ;
    }

    return Sum(a, sum += a[i], i + 1);
}

int main()
{
    int n;
    std::cin >> n;
    std::vector<int> a(n);

    for (int i = 0; i < n; i++)
    {
        std::cin >> a[i];
    }

    std::cout << Sum(a, 0, 0);
}