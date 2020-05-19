#importing libaries
import random
import sys
import string
#define input
a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')

#Core Code
def RandomStringGenerator(c):
    letters = string.ascii_lowercase + string.digits
    return ''.join(random.choice(letters) for i in range(c))
c=random.choice(range(int(a), int(b)))

for x in range(int(n)):
    print(RandomStringGenerator(c))
