#include <iostream>

using namespace std;

int factorial (int num) {

    int fact = 1;

    while(num >= 1) {
        fact = fact * num;
        num --;
    }

    return fact;
}

int main() {

    int result  = factorial(4);

    cout<< result <<endl;

    return 0;
}