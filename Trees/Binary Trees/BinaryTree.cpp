#include <bits/stdc++.h>

using namespace std;

struct node
{
    struct node *left;
    struct node *right;
    int data;

    node(node *LEFT, node *RIGHT, int DATA)
    {
        left = LEFT;
        right = RIGHT;
        data = DATA;
    }
};

int main()
{
}