// array.cpp
#include <iostream>

int main() {
    int arr[5] = {1, 2, 3, 4, 5};

    std::cout << "Array elements are: ";
    for (int i = 0; i < 5; i++) {
        std::cout << arr[i] << " ";
    }
    std::cout << std::endl;

    return 0;
}
