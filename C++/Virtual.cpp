using namespace std;

class Animal {

public:

    void getFamily() { cout << "We are animals" << endl; }
    virtual void getClass() { cout << "I'm an Animal" << endl; }

};

class Dog : public Animal {

public:
    getClass() { cout << "I'm a Dog" << endl; }

};

int main() {

    Animal *animal = new Animal;
    Dog *dog = new Dog;

    animal->getClass();
    dog->getrClass();

    return 0;

}

class GermanSherpard : public Dog {

public:

    void getClass() 
}
