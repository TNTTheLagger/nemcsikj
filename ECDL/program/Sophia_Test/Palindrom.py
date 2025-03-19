# Program checks if a string (without punctuation or spaces) is a palindrome.

# Uses some functions and constants for strings.
import string;

# Example of a palindrome for developing the code
sentence="Maps, DNA, and spam."

# Code for reading the sentence
sentence= str(input("Please enter sentence for test: "))

# Code for capitalization and removal of all punctuation from the string
test_sentence="".join(c for c in sentence.upper() if c not in string.punctuation and c not in string.whitespace)

# Helper variable for length of the test_sentence.
n=len(test_sentence)

# Code to test the string "test_sentence".
...

print (sentence," is a palindrome!")
print (sentence," is not a palindrome!")