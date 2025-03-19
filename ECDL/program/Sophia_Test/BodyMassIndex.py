# Program calculates from the body masses the body mass index and the classification according to WHO

# The classification of the resulting characteristic then takes place according to the following table
# 0 <= bmi < 16: massively underweight
# 16 <= bmi < 17: moderately underweight
# 17 <= bmi < 18.5: little underweight
# 18.5 <= bmi < 25: normal weight
# 25 <= bmi < 30: overweight
# 30 <= bmi : obese
# Source: WHO, http://apps.who.int/bmi/

# Table with 6 classifications for BMI of 0..30 as recommended by the World Health Organization
BMIclass=((0,    16,   "massively underweight"), 	# bmi<16
           (16,   17,   "moderately underweight"), 	# 16<=bmi<17
           (17,   18.5, "little underweight"),  	# 17<=bmi<18
           (18.5, 25,   "normal weight"),       	# 18<=bmi<25
           (25,   30,   "overweight"),         		# 25<=bmi<30
           (30,   999,  "obese"))            		# 30<=bmi

# Control expression of the table
for (ulim,olim,klassi) in (BMIclass) :
    print (ulim,"-",olim,klassi)
    
# Code for reading body size and body weight
size= float(input("Enter body size in cm: "))
weight= float(input("Enter body weight in kg: "))
level=""

# Calculation and classification
...
    
print ("The body mass index for",size,"cm and",weight,"kg is",bmi)
print ("Classification according to WHO:",level)