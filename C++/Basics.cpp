/*
Learn c++
*/

#include <iostream>
#include <vector>
#include <string>
#include <fstream>

int main() {

    cout << "Hello World" << endl;

    const double PI = 3.1415926535;

    char myGrade = 'A';

    bool isHappy = true;
    bool isHappy = false;

    int myAge = 39;

    float favNum = 3.141592;

    double otherFavNum = 1.6180339887;

    cout << "Favorite Number" << favNum << endl;

    /*
    Other Data Types
    Short int: At least 16 bits
    Long int: At least 32 bits
    Long long int: At least 64 bits
    Unsigned int: Same size as signed version
    Long double: Not less than double
    */

    cout << "Size of int: " << sizeOf(myAge) << endl;
    cout << "Size of bool: " << sizeOf(isHappy) << endl;

    int largestInt = 2147483647;

    cout << "Largest Int: " << largestInt << endl;

    largestInt++;

    //overflow
    cout << "Largest Int: " << largestInt << endl;

    //arithmetic: + - * / % ++ --

    //Incrementing can happen BEFORE (++x) or AFTER (x++)

    //rounding error
    cout << "4 / 5 = " << 4/5 << endl;

    cout << "4 / 5 = " << (int) 4/5 << endl;

    //Comparison operators: == != < > <= >= && || !

    int age = 70;
    int ageAtLastExam = 16;
    bool isNotIntoxicated = true;

    if((age >= 1) && (age < 16)) {
        cout << "You can't drive" << endl;
    } else if (!isNotIntoxicated) {
        cout << "You can't drive" << endl;
    } else if (age >= 80 && ((age > 100)) || ((age - ageAtLastExam) > 5)) {
        cout << "You can't drive" << endl;
    } else {
        cout << "You can drive" << endl;
    }

    int greetingOption = 2;

    switch(greetingOption) {

        case 1:
            cout << "Bonjour" << endl;
            break;
        case 2:
            cout << "Hola" << endl;
            break;
        default:
            cout << "Hello" << endl;

    }

    /*
    Ternary operators:
    variable = (condition) ? true : false
    */

    int largestNum = ( 5 > 2 ) ? 5 : 2;

    int myFavNums[5];

    int badNums[5] = {4, 13, 14, 24, 34};

    cout << "Bad Number 1: " << badNums[0] << endl;

    char myName[5][5] = {{'V', 'I', 'C', 'T', 'O', 'R'},
                        {'V', 'E', 'L', 'E'}};

    cout << "2nd letter in 2nd array: " << myName[1][1];

    myName[0][2] = 'E';

    cout << myName[0][2];

    for (int i = 1; i <= 10; i++) {

        cout << i << endl;

    }

    for(int j = 0; j < 5; j++) {
        for(int k = 0; k < 5; k++) {

            cout << myName[j][k];

        }
         cout << endl;
    }

    int randNum = (rand() % 100) + 1;

    while(randNum != 100) {

        cout << randNum << ", ";

        randNum (rand() % 100) + 1;

    }

    cout << endl;

    int index = 1;

    while (index <= 10) {

        coud << index << endl;

        index++;

    }

    String numberGuessed;
    int intNumberGuessed = 0;

    do {

        cout << "Guess between 1 and 10: ";

        getline(cin, numberGuessed);

        intNumberGuessed = stoi(numberGuessed);

        //stod: string to double

        cout << intNumberGuessed << endl;

    } while (intNumberGuessed != 4);

    cout << "You Win" << endl;

    // STRINGS

    char happyArray[6] = {'H', 'A', 'P', 'P', 'Y'};

    string birthdayString = "Birthday";

    cout << happyArray + birthdayString;

    string yourName;
    cout << "What is your name ";
    getline(cin, yourName);

    cout << "Hello " << yourName << endl;

    double eulersConstant = .57721;
    String eulerGuess;
    double eulerGuessDouble;

    cout << "What is euler's constant?";
    getline(cin, eulerGuess);
    eulerGuessDouble = stod(eulerGuess);

    if(eulerGuessDouble == eulerConstant) {
        cout << "You are right" << endl;
    } else {
        cout << "You are wrong" << endl;
    }

    cout << "Size of string" << eulerGuess.size() << endl;
    cout << "Is string empty" << eulerGuess.empty() << endl;

    string dogString = "dog";
    string catString = "cat";

    cout << dogString.compare(catString) << endl;

    string wholeName = yourName.assign(yourName);
    cout << wholeName << endl;

    string firstName = wholeName.assign(wholeName, 0, 5);
    cout << firstName << endl;

    int lastNameIdnex = yourName.find("Vele", 0);
    cout << "Index for last name: " << lastNameIndex << endl;

    //Insert " Justin" starting at the 5th index
    yourName.insert(5, " Justin");
    cout << yourName << endl;

    //Erase 6 chars starting at the 7th index
    yourName.erase(6, 7);

    //Replace 5 characters starting at index 6
    your.replace(6, 5, "Maximus");
    cout << yourName << endl;

    // VECTORS

    vector <int> lotteryNumVector(10);

    int lotteryNumArray[5] = {4, 13, 14, 24, 34};

    lotteryNumVect.insert(lotteryNumArray.begin(), lotteryNumArray, lotteryNumArray + 3);

    cout << lotteryNumVect.at(2) << endl;

    lotteryNumVect.insert(lotteryNumVect.begin() + 5, 44);

    //Add at the end
    lotteryNumVect.push_back(64);

    //Remove at the end
    lotteryNumVect.pop_back();

    return 0;

}
