#include <iostream>
#include <vector>
#include <string>
#include <fstream>

using namespace std;

void makeMeYoung(int* age) {

    cout << "I used to be " << *age << endl;
    *age = 21;

}

void actYourAge(int& age) {

    age = 39;

}

int main() {

    int myAge = 39;
    char myGrade = 'A';

    cout << "Size of int" << sizeof(myAge) << endl;
    cout << "Size of char" << sizeof(myGrade) << endl;

    cout << "myAge is located at " << &myAge << endl;

    //Values are usually PASSED BY VALUE
    //ex:
    int x = 1;
    int y = 2;

    addTheseNumbers(x, y);

    //Instead you can pass pointers

    int myAge = 39;

    int* agePtr = &myAge;

    cout << "Address of pointer " << agePtr << endl;

    cout << "Data at memory address " << *agePtr << endl;

    int badNums[5] = {4, 13, 14, 24, 34};

    int* numArrayPtr = badNums;

    cout << "Address " << numArrayPtr << " Value " << *numArrayPtr << endl;

    //Go to next value in array
    numArrayPtr++;

    //Array name is just a pointer to the array
    cout << "Address " << badNums << " Value " << *badNums << endl;

    int age = 31;

    makeMeYoung(&age);

    cout << "Now I'm " << myAge << " years old now " << endl;

    //These are REFERENCES!!!
    int& ageRef = myAge;

    cout << "myAge : " << myAge << endl;

    ageRef++;

    cout << "myAge : " << myAge << endl;

    actYourAge(ageRef);

    cout << "myAge : " << myAge << endl;

    //Use pointers if you don't want to initialize at declaration!!!

}
