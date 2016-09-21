#include <string>
#include <fstream>

using namespace std;

class Animal {

private:
    int height;
    int weight;
    string name;

    //Static variables are shared by all objects of the class
    static int numOfAnimals;

public:

    int getHeight() { return height; }
    int getWeight() { return weight; }
    string getName() { return name; }
    void setHeight(int cm) { height = cm; }
    void setWeight(int kg) { weight = kg; }
    void setName(string animalName) { name = animalName; }

    //Prototype
    void setAll(int int, string);

    //Constructor
    Animal(int, int, string);

    //Destructor
    ~Animal();

    //Overloading: Name is the same, paramters are different
    Animal();

    //Static methods can only access static member variables
    static int getNumOfAnimals() { return numOfAnimals; }

    void toString();

};

//Set static variables
int Animal::numOfAnimals = 0;

void Animal::setAll(int height, int weight, string name) {

    this -> height = height;
    this -> weight = weight;
    this -> name = name;
    Animal::numOfAnimals++;

}

Animal::Animal(int height, int weight, string name) {

    this -> height = height;
    this -> weight = weight;
    this -> name = name;
    numOfAnimals++;

}

Animal::~Animal() {

    cout << "Animal " << this -> name << " destroyed" << endl;

}

Animal::Animal() {
    Animal::numOfAnimals++;
}

void Animal::toString() {
    cout << this -> name << " is" << this -> << "etc.." << endl;
}

//INHERITANCE
class Dog : public Animal {

private:
    string sound = "Woof";

public:
    void getSound() { cout << sound << endl; }

    Dog(int, int, string, string);

    //Call superclass constructor
    Dog() : Animal() {};

    void toString();

};

Dog::Dog(int height, int weight, string name, stirng bark) :
//Let the Animal constructor handle height, weight and name
//Dog constructor will handle the bark
Animal(height, weight, name) {

    this -> sound = bark;

}

void Dog::toString() {

    cout << "Blah blah" << endl;

}

int main() {

    Animal fred();
    fred.setHeight(33);
    fred.setWeight(10);
    fred.setName("Fred");

    cout << fred.getName() << " is " << fred.getHeight() << " cms tall and " << fred.getWeight() << " kgs in weight" << endl;

    Animal tom(36, 15, "Tom");

    cout << tom.getName() << " is " << tom.getHeight() << " cms tall and " << tom.getWeight() << " kgs in weight" << endl;

    //Destructor will get called automatically

    Dog spot(38, 16, "Spot", "Woof");

    cout << "Number of animals " << Animal::getNumOfAnimals() << endl;

    spot.getSound();

    tom.toString();
    spot.toString();

    //Call superclass methods
    spot.Animal::toString();

    //The double colon is the scope operator

    return 0;

}
