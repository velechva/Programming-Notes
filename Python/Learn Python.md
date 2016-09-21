# Python Basics
---
### General notes

- There is no special 'char' type. A character is just a string of length 1

### Flow of Control

```python
if condition1:
  # do something
elif condition2:
  # do something else

while condition:
  # keep doing this

for item in sequence:
  # iterate through each 'item' in 'sequence'

for x in range(10):
  # iterate from 0 to 9

for x in range(5, 10):
  # iterate from 5 to 9
```

### Arrays

```python
arrayOfStrings = ['this', 'is', 'a', 'list', 'of', 'strings']
```

### strings
```python
myString = 'Hello World'

myChar = myString[4]

myString.split(' ') # ['Hello', 'World']
myString.split('r') # [Hello Wo', 'ld']
```

### Tuples
A sequence of **immutable** python objects

```python
emptyTuple = ()
nonEmptyTuple = 12, 89, 'a'

nonEmptyTuple[0] # 12
```

### Dictionaries

Basically a map (or hash)

```python
emptyDictionary = {}
myDict = {'a': 1, 'b': 23, 'c': 'eggs'}

myDict['a'] # Returns 1
del myDict['b'] # Deletes the map entry for 'b': 23

myDict.has_key('e')
myDict.keys()
myDict.items()
myDict.update({'5' : "bob"})
'c' in myDict
'somethingelse' in myDict
```

### Lists

```python
myLIst = [5, 3, 'p', 9, 'e']

len(myList) # returns 5

myList[0] # return 5
myList[a:b] # returns item from [a, b - 1]
myList[n:] # returns items from [n, end]
myList [:n] # returns items from [0, n-1]

myList.sort()
myList.append(15) # adds to the end
myList.pop() # returns 15
myList.pop(1) # returns 5
myList.insert(n, 'z') # inserts 'z' at index (n - 1) and shifts the rest of the
					  # items over
myList.remove('e')
del myList[0]

myList + ['a', 'b'] # concatenates botrh
x in muList # True if x is found in myList
```

### Special List Expressions
All of the form [expression for expr in sequence if condition]
```python
[x*5 for x in range(5)] # returns [0, 5, 10, 15, 20]
[x for x in range(5) if x % 2 == 0] # returns [0, 2, 4]
```

### Functions

```python
def funct(param1, param2):
  """
    If the initial sentence is surrounded in triple quotes, you can build documentation
    with it. It can also be accessed with funct.___doc___
  """
  spam = param1 + param2
  return spam
```

### Classes

```python
class Animal(ClassToInheritFrom):
	def __init__(self): # Constructors
		ClassToInheritFrom.__init__(self) # Put this here if you are inheriting from some class
		self.breed = 'dog'

	def makeASound(self, argument):
		print "Something"
```

### Defining an objects
```python
myAnimal = Animal()
```

### File I/O
```python
myFile = open('directory/of/file.txt') # Open a File
                                       # Default behaviour is read-only

myFile.read() # Read entire file into one string
myFile.readline() # Read one line of the file
myFile.readLines()	# Reads entire file into a list of strings, one per line

for line in myFile:
# Iterate through lines                                   
```
