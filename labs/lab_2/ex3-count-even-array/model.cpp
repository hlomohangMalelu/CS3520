#include <iostream>

using namespace std;

int main()
{
    int numbers[5] = {10,20,22,40,27};
    int i = 0;
    int count = 0;

    while(i < 5) 
    {
        if(numbers[i] % 2 == 0) 
        {
            count ++;
        }

        i++;
    }

    cout<< count <<endl;
    
    return 0;
}