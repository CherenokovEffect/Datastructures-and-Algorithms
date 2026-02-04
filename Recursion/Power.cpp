#include <iostream>
#include <vector>

double Power(int x, int n, double val)
{
    if (n == 0)
    {
        return val;
    }

    return Power(x, n - 1, val * x);
}

int main()
{
    int x, n;
    std::cin >> x >> n;
    bool flag = false;
    if (n < 0)
    {
        flag = true;
    }
    double val = Power(x, abs(n), 1);

    flag == true ? std::cout << 1 / val : std::cout << val;
}