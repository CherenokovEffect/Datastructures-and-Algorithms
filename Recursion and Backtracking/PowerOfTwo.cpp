#include <iostream>

int Even(int n)
{
    if ( n / 2 < 1) return 1;
    if (n % 2 == 1)  return 0;
    

    return Even(n / 2);
}

int main()
{
    int n;
    std::cin >> n;
    std::cout << Even(n);
}