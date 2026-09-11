#include <iostream>

using namespace std;

int main() 
{
    int n = 5;
    int total =0;

    int i = 1;
    while(i <= n)
    {
        total += i;
        i++;
    }

    cout<<"Total: "<<total<<endl;

    return 0;
}