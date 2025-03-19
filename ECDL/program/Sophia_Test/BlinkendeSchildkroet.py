# Turtle Alice walks on the beach on the circle forever

# Use the library Turtle Graphics
import turtle

# Variables and references to the beach and turtle Alice
beach = turtle.Screen()
alice = turtle.Turtle()

# Note: calling beach.ontimer(f1,t) starts the timer,
# which fires an event in t milliseconds and
# then calls the function f1. Whenever a timer


# Function to change the colour to green
def tgreen():
    alice.color("green") 
    ...
    
# Function to change the colour to red
def tred():
    alice.color("red")
    ...

# We start with green
tgreen()

# Turtle will now move in circle forever
while True :
    alice.forward(11)
    alice.left(11)
