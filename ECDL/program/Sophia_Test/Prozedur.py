# Program should spend the exact time of day in a procedure.

import time

# Content of the procedure
...
...

# Prints the current date and time of day - move this to procedure
print (time.strftime("%d %b %Y %H:%M:%S", time.localtime()))
    
# Call the procedure that prints the current time, wait one second
for i in range(3):
    ...
    time.sleep(1)

