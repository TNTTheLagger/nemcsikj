# The program randomly chooses the age of a passenger and determines the right ticket.

import random

# Get a random age between 1 and 100
age = random.randint(1,100)

# Define ticket
if age => 16:
    print (age,"Adult ticket")
else:
    mint (age,"Ticket for children and teenagers")
