#include <iostream>
/*
Factorial

n! = n*(n-1)!
*/

int Factorial(int n)
{
    if (n < 2)
    {
        return 1;
    }

    return Factorial(n - 1) + Factorial(n - 2);
}

int main()
{
    int n;
    std::cin >> n;
    std::cout << Factorial(n);
}