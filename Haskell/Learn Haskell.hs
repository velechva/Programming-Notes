-- Comments
{-
Multiline
Comments
-}

import Data.List
import System.IO

-- Int -2^63 to 2^63

maxInt = maxBound :: Int
minInt = minBound :: Int

--Data Types:

--Integer (unbounded whole number)
--Float
--Double (11 point precision)
--Bool
--Char

--Constants
always5 :: Int
always5 = 5

sumOfNums = sum [1..1000]

addEx = 5 + 4
subEx = 5 - 4
multEx = 5 * 4
divEx = 5 / 4

--prefix operator
modEx = mod 5 4

--infix operator
modEx2 = 5 `mod` 4

--must have parenthesis around the minus sign
negNumEx = 5 + (-4)

-- :t [FUNCTION_NAME] in terminal gives function definition
{-
:t sqrt

OUTPUT:

sqrt :: Floating a => a -> a

-Works with floating point numbers
-}

-- :: is for giving the type of a variable
num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)

{-
Built in math functions

pi
exp
log
a**b
truncate
round
ceiling
floor
sin
cos
tan
asin
atan
acos
sinh
tanh
cosh
asinh
atanh
acosh

-}

trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)

--Lists

--Singly linked
--Only add to the front of a list

primeNumbers = [3,5,7,11]

morePrime = primeNumbers ++ [13,17,19,23,29]

-- !!!!!!!!!!!!!!!!!!!!!!
--Another way to initialize a list
--[] is the end of the list
favNums = 2 : 7 : 21 : 66 : []
-- !!!!!!!!!!!!!!!!!!!!!

morePrimes2 = 2 : morePrimes

lenPrime = length morePrimes2

revPrime = reverse morePrimes2

-- Null checks if list is empty
isListEmpty = null morePrimes2

secondPrime = morePrimes2 !! 1
firstPrime = head morePrimes2
lastPrime = last morePrimes2

--Everything except the last value
primeInit = init morePrimes2

first3Primes = take 3 morePrimes2
removedPrimes = drop 3 morePrimes2

is7InList = 7 `elem` morePrimes2

maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2
newList = [2,3,5]


prodPrimes = product newList

zeroToTen = [0..10]

evenList = [2,4..20]

letterList = ['A','C'..'Z']