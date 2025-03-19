# Determination of the largest common divisor after Euclid

a,b=15,21

while a != b :
    if a > b :
        a = a - b
    else :
        b = b - a
        
print (a)

# Enter values of (a, b) for each loop pass as an answer here
values=((15,21),...)