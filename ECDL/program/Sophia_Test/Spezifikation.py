# The program checks if a vehicle number in the railway traffic is in
# internationally specified format.

test_numbers= ("21 80 990 3 914-4", "73 88 88 95 006-2", "94 85 4 500 026-7")
test_numbers+=("61 85 884 103-8",   "73 81 85 90 520-2", "615 68 8 70 012-4")

# Forms checksum by adding all digits one by one
def check_sum(nr) :
    sum=0
    for digit in nr :
        if (digit >= "0" and digit <="9") :
           sum=sum + int(digit)
    return(sum)
    
# only one of the four functions A..D (nr) corresponds to the specification in the text - which one?
def A(nr): 
    if (len(nr)!=17) :
       return(False)
	# determines divisibility by 9
    if (int(nr) % 9 != 0) :
       return(False)
    return(True)

def B(nr): 
    if (len(nr)!=17) :
       return(False)
	# determines divisibility by 10
    if check_sum(nr) % 10 != 0 :
       return(False)
    return(True)
 
def C(nr): 
    if (len(nr)!=11) :
       return(False)
	# determines divisibility by 10
    if check_sum(nr) % 10 != 0 :
       return(False)
    return(True)

def D(nr): 
    if (len(nr)!=17) :
       return(True)
	# determines divisibility by 10
    if check_sum(nr) % 10 != 0 :
       return(True)
    return(True)

for nr in test_numbers :
    print (nr," valid:",...)
