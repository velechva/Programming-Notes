# Python Cheat Sheet

# COMMENTS

# Comments start with a '#'

# FLOW OF CONTROL

if condition1:
	# do if condition1
elif condition2:
	# do if (not condition1) and (condition2)

while condition:
	# keef doing while condition is true

for item in sequence:
	# iterate through each 'item' in 'sequence'

for x in range(10):
	# iterate from 0 to 9

for x in range(5, 10):
	# iterate from 5 to 9

# ARRAYS

arrayOfStrings = ["this", "is", "a", "list", "of", "strings"]

# STRINGS

myString = "Hello World"

myChar = myString[4]

myString.split(' ') # ['Hello', 'World']
myString.split('r') # ['Hello Wo', 'ld']

# TUPLES

emptyTuple = ()
nonEmptyTuple = 12, 89, 'a'

nonEmptyTuple[0] # Returns 12

# DICTIONARIES

emptyDictionary = {}
myDict = {'a': 1, 'b': 23, 'c': "eggs"}

myDict['a'] # return 1
del myDict['b'] # deletes 'b' : 23

myDict.has_key('e')
myDict.keys()
myDict.items()
myDict.update({'5' : "bob"})
'c' in myDict
'somethingelse' in myDict

# LISTS

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

# Special List Expressions
# all of the form [expression for expr in sequence if condition]

[x*5 for x in range(5)] # returns [0, 5, 10, 15, 20]
[x for x in range(5) if x % 2 == 0] # returns [0, 2, 4]

# FUNCTIONS

def funct(param1, param2):
	"""
	   If the initial setenence is surrounded in triple quotes, you can build
	   documentation with it. It can also be accessed with funct.__doc___
	"""
	spam = param1 + param2
	return spam

# CLASSES

class Animal(ClassToInheritFrom):
	def __init__(self): # Constructors
		ClassToInheritFrom.__init__(self) # Put this here if you are inheriting from some class
		self.breed = 'dog'

	def makeASound(self, argument):
		print "Something"

# DEFINING AN OBJECT

myAnimal = Animal()

# FILE I/O

myFile = open("directory/of/file.txt") # Open a file
									   # Default bahvior is read only

myFile.read() # Read entire file into one string
myFile.readline() # Read one line of the file
myFile.readLines()	# Reads entire file into a list of strings, one per line

for line in myFile:
	# Iterate through lines
