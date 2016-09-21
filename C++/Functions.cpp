#include <iostream>
#include <vector>
#include <string>
#include <fstream>

// Functions go BEFORE main

int addNumbers(int firstNum, int secondNum = 0) {

    int combinedValue = firstNum + secondNum;

    return combinedValue;
    //or: return firstNum + secondNum;

}

//overloading
int addNumbers(int firstNum, int secondNum = 0, int thirdNum) {

    return firstNum + secondNum + thirdNum;

}

int getFactorial(int number) {

    int sum;
    if (number == 1) sum = 1;
    else sum = getFactorial(number - 1) * number;
    return sum;

}

int main() {

    string steveQuote = "A dayu without sunshine is like, you know, night";

    ofstream writer("stevequote.txt");

    if(! write) {

        cout << "Error opening file" << endl;
        return -1;
    } else {
        writer << steveQuote << endl;

        writer.close();
    }

    ofstream writer2("stevequote.txt", ios::app);

    /*
     Open a stream to append to what's there with ios::app
     ios::binary Treat the file as binary
     ios::in open a file to read input
     ios::trunc default
     ios::out open a file to write output
     */

     writer2 << "\n -Steve Martin" << endl;

     writer2.close();

     char letter;

     ifstream reader("stevequote.txt");

     if (! reader) {
         cout << "Error opening file" << endl;
         return -1;
     } else {
         for (int i = 0; ! reader.eof(); i++) {

             reader.get(letter);
             cout << letter;

         }

         cout << endl;
         reader.close();

     }

    return 0;
}
