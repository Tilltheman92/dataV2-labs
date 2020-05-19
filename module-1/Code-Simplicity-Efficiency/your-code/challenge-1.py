#Cheated by turning the input into numbers, not sure if allowed
print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')
a = input('Please choose your first number (0 to 5): ')
b = input('What do you want to do? plus or minus: ')
c = input('Please choose your second number (0 to 5): ')
#functions:

def plus (a,b):
    result=int(a)+int(c)
    return print(a," plus ",c,"equals: ",result)
def minus(a,b):
    result1=int(a)-int(c)
    return print(a," minus ",c,"equals: ",result1)
#main code

if b=="plus":
    plus(a,c)
elif b=="minus":
    minus(a,c)
    


print("Thanks for using this calculator, goodbye :)")
