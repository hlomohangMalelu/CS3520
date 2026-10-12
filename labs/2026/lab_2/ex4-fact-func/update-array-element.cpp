
#include <iostream>
using namespace std;

// Update the element at the given index
void updateArrayElement(int numbers[], int i) {
    numbers[i] += 10;  // Add 10 to the selected element

    cout<< numbers[i] <<endl;  // Print the updated element
}

int main() {
    int numbers[] = {10, 20, 30, 40, 50};

    updateArrayElement(numbers, 0);  // Update and print the first element

    return 0;
}