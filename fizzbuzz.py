#fizzbuzz
fbNumber = input("Please enter a number ")
if (int(fbNumber) % 3 == 0 and int(fbNumber) % 5 == 0):
    print ("FizzBuzz")
elif (int(fbNumber) % 5 == 0):
    print ("Buzz")
elif (int(fbNumber) % 3 == 0):
    print ("Fizz")
else:
    print (fbNumber)
